import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:power_lift/main.dart';
import 'package:power_lift/repository/power_lift_api_impl.dart';

part 'auth_bloc.freezed.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final PowerLiftApiImpl api;

  AuthBloc(this.api) : super(const _AppStarted()) {
    on<AuthEvent>(
      (event, emit) async {
        await event.when(
          startApp: () async {
            try {
              final id = await storage.read(key: 'Id');
              if (id?.isNotEmpty == true) {
                emit(AuthState.loggedIn(int.parse(id!)));
              } else {
                emit(const AuthState.loggedOut());
              }
            } on Exception catch (e) {
              emit(const AuthState.error("Could not start the app properly."));
            }
          },
          logIn: (email, password) async {
            try {
              final response = await api.login(email, password);
              await storage.write(
                key: 'Id',
                value: response.user.Id.toString(),
              );
              emit(AuthState.loggedIn(response.user.Id));
            } on Exception catch (e) {
              emit(AuthState.error("Could not sign in the user."));
            }
          },
          createUser: (email, password, username, fullName) {},
          logOut: () async {
            await storage.delete(key: 'Id');
            emit(const AuthState.loggedOut());
          },
        );
      },
    );
  }
  @override
  void onEvent(AuthEvent event) {
    super.onEvent(event);
    kLogger.i('Event triggered: $event');
  }
}

@freezed
class AuthEvent with _$AuthEvent {
  const factory AuthEvent.startApp() = _StartApp;
  const factory AuthEvent.logIn(String email, String password) = _LogIn;
  const factory AuthEvent.createUser(
          String email, String password, String username, String fullName) =
      _CreateUser;
  const factory AuthEvent.logOut() = _LogOut;
}

@freezed
class AuthState with _$AuthState {
  const factory AuthState.appStarted() = _AppStarted;
  const factory AuthState.loggedIn(int uid) = _LoggedIn;
  const factory AuthState.registered() = _Registered;
  const factory AuthState.loading() = _Loading;
  const factory AuthState.error(String error) = _Error;
  const factory AuthState.loggedOut() = _LoggedOut;
}
