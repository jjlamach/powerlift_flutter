import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:power_lift/main.dart';
import 'package:power_lift/models/createUserDto/create_user.dart';
import 'package:power_lift/models/userDto/user.dart';
import 'package:power_lift/repository/power_lift_api_impl.dart';
import 'package:power_lift/utils/errors.dart';

part 'auth_bloc.freezed.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final PowerLiftApiImpl api;
  User? user;
  AuthBloc(this.api) : super(const _AppStarted()) {
    on<AuthEvent>(
      (event, emit) async {
        await event.when(
          startApp: () async {
            try {
              final token = await storage.read(key: 'token');
              final username = await storage.read(key: 'username');
              if (token?.isNotEmpty == true) {
                emit(AuthState.loggedIn(token: token, username: username));
              } else {
                emit(const AuthState.loggedOut());
              }
            } on Exception catch (_) {
              emit(const AuthState.error(Errors.couldNotStartApp));
            }
          },
          logIn: (email, password) async {
            try {
              final response = await api.login(email, password);
              await storage.write(
                key: 'token',
                value: response.access_token,
              );
              await storage.write(
                key: 'username',
                value: response.user.username,
              );
              user = response.user;

              emit(AuthState.loggedIn(
                  token: response.access_token,
                  username: response.user.username));
            } on Exception catch (e) {
              emit(const AuthState.error(Errors.signInError));
              emit(const AuthState.initial());
            }
          },
          createUser: (email, password, username, fullName) async {
            try {
              final result = await api
                  .createUser(CreateUser(username, password, fullName, email));
              emit(AuthState.registered(result));
            } on Exception catch (_) {
              emit(const AuthState.error(Errors.couldNotCreateUser));
              emit(const AuthState.initial());
            }
          },
          logOut: () async {
            await storage.delete(key: 'token');
            await storage.delete(key: 'username');
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
  const factory AuthState.loggedIn({String? token, String? username}) =
      _LoggedIn;
  const factory AuthState.registered(int uid) = _Registered;
  const factory AuthState.loading() = _Loading;
  const factory AuthState.error(String error) = _Error;
  const factory AuthState.loggedOut() = _LoggedOut;
  const factory AuthState.initial() = _Initial;
}
