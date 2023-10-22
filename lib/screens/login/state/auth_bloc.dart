import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:power_lift/repository/power_lift_api_impl.dart';

part 'auth_bloc.freezed.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final PowerLiftApiImpl api;
  AuthBloc(this.api) : super(const _AppStarted()) {
    on<AuthEvent>(
      (event, emit) async {
        await event.when(
          startApp: () {},
          logIn: (email, password) async {
            try {
              final response = await api.login(email, password);
              emit(AuthState.loggedIn(response.user.id));
            } on Exception catch (e) {
              emit(AuthState.error(e));
            }
          },
          createUser: (email, password, username, fullName) {},
          logOut: () {},
        );
      },
    );
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
  const factory AuthState.error(Exception error) = _Error;
}
