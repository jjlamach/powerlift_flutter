import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';
import 'package:power_lift/data/createUserDto/create_user.dart';
import 'package:power_lift/data/loginDto/login_dto.dart';
import 'package:power_lift/data/userDto/user.dart';
import 'package:power_lift/domain/usecase/createuserusecase/create_user_usecase.dart';
import 'package:power_lift/domain/usecase/deleteuserusecase/delete_user_usecase.dart';
import 'package:power_lift/domain/usecase/loginusecase/login_use_case.dart';
import 'package:power_lift/main.dart';
import 'package:power_lift/utils/errors.dart';
import 'package:power_lift/utils/strings.dart';

part 'auth_bloc.freezed.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  User? user;
  final LoginUseCase _loginUseCase;
  final CreateUserUseCase _createUserUseCase;
  final DeleteUserUseCase _deleteUserUseCase;

  final Box storage = Hive.box('appStorage');

  AuthBloc(this._loginUseCase, this._createUserUseCase, this._deleteUserUseCase)
      : super(const _AppStarted()) {
    on<AuthEvent>(
      (event, emit) async {
        await event.when(
          startApp: () async {
            try {
              final token = storage.get('token');
              final username = storage.get('username');

              if (token != null) {
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
              LoginDto loginDto = LoginDto(Username: email, Password: password);
              final response = await _loginUseCase.logIn(loginDto);
              storage.put('token', response.access_token);
              storage.put('username', response.user.username);

              user = response.user;

              emit(
                AuthState.loggedIn(
                  token: response.access_token,
                  username: response.user.username,
                ),
              );
            } on Exception catch (e) {
              emit(const AuthState.error(Errors.signInError));
              emit(const AuthState.initial());
            }
          },
          createUser: (email, password, username, fullName) async {
            try {
              final result = await _createUserUseCase.createUser(
                CreateUser(username, password, fullName, email),
              );
              emit(AuthState.registered(result));
            } on Exception catch (_) {
              emit(const AuthState.error(Errors.couldNotCreateUser));
              emit(const AuthState.initial());
            }
          },
          delete: () async {
            try {
              final result = await _deleteUserUseCase.deleteUser();
              if (result >= 0) {
                await storage.delete('token');
                await storage.delete('username');
                emit(const AuthState.deleted());
              }
            } on Exception catch (_) {
              emit(const AuthState.error(Strings.couldNotDeleteUser));
            }
          },
          logOut: () async {
            try {
              await storage.delete('token');
              await storage.delete('username');
              emit(const AuthState.loggedOut());
            } on Exception catch (_) {
              emit(const AuthState.error('Could not log out'));
            }
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
  const factory AuthEvent.delete() = _Delete;
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
  const factory AuthState.deleted() = _Deleted;
}
