// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AuthEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() startApp,
    required TResult Function(String email, String password) logIn,
    required TResult Function(
            String email, String password, String username, String fullName)
        createUser,
    required TResult Function() logOut,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? startApp,
    TResult? Function(String email, String password)? logIn,
    TResult? Function(
            String email, String password, String username, String fullName)?
        createUser,
    TResult? Function()? logOut,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? startApp,
    TResult Function(String email, String password)? logIn,
    TResult Function(
            String email, String password, String username, String fullName)?
        createUser,
    TResult Function()? logOut,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_StartApp value) startApp,
    required TResult Function(_LogIn value) logIn,
    required TResult Function(_CreateUser value) createUser,
    required TResult Function(_LogOut value) logOut,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_StartApp value)? startApp,
    TResult? Function(_LogIn value)? logIn,
    TResult? Function(_CreateUser value)? createUser,
    TResult? Function(_LogOut value)? logOut,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_StartApp value)? startApp,
    TResult Function(_LogIn value)? logIn,
    TResult Function(_CreateUser value)? createUser,
    TResult Function(_LogOut value)? logOut,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthEventCopyWith<$Res> {
  factory $AuthEventCopyWith(AuthEvent value, $Res Function(AuthEvent) then) =
      _$AuthEventCopyWithImpl<$Res, AuthEvent>;
}

/// @nodoc
class _$AuthEventCopyWithImpl<$Res, $Val extends AuthEvent>
    implements $AuthEventCopyWith<$Res> {
  _$AuthEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$StartAppImplCopyWith<$Res> {
  factory _$$StartAppImplCopyWith(
          _$StartAppImpl value, $Res Function(_$StartAppImpl) then) =
      __$$StartAppImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$StartAppImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$StartAppImpl>
    implements _$$StartAppImplCopyWith<$Res> {
  __$$StartAppImplCopyWithImpl(
      _$StartAppImpl _value, $Res Function(_$StartAppImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$StartAppImpl implements _StartApp {
  const _$StartAppImpl();

  @override
  String toString() {
    return 'AuthEvent.startApp()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$StartAppImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() startApp,
    required TResult Function(String email, String password) logIn,
    required TResult Function(
            String email, String password, String username, String fullName)
        createUser,
    required TResult Function() logOut,
  }) {
    return startApp();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? startApp,
    TResult? Function(String email, String password)? logIn,
    TResult? Function(
            String email, String password, String username, String fullName)?
        createUser,
    TResult? Function()? logOut,
  }) {
    return startApp?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? startApp,
    TResult Function(String email, String password)? logIn,
    TResult Function(
            String email, String password, String username, String fullName)?
        createUser,
    TResult Function()? logOut,
    required TResult orElse(),
  }) {
    if (startApp != null) {
      return startApp();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_StartApp value) startApp,
    required TResult Function(_LogIn value) logIn,
    required TResult Function(_CreateUser value) createUser,
    required TResult Function(_LogOut value) logOut,
  }) {
    return startApp(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_StartApp value)? startApp,
    TResult? Function(_LogIn value)? logIn,
    TResult? Function(_CreateUser value)? createUser,
    TResult? Function(_LogOut value)? logOut,
  }) {
    return startApp?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_StartApp value)? startApp,
    TResult Function(_LogIn value)? logIn,
    TResult Function(_CreateUser value)? createUser,
    TResult Function(_LogOut value)? logOut,
    required TResult orElse(),
  }) {
    if (startApp != null) {
      return startApp(this);
    }
    return orElse();
  }
}

abstract class _StartApp implements AuthEvent {
  const factory _StartApp() = _$StartAppImpl;
}

/// @nodoc
abstract class _$$LogInImplCopyWith<$Res> {
  factory _$$LogInImplCopyWith(
          _$LogInImpl value, $Res Function(_$LogInImpl) then) =
      __$$LogInImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String email, String password});
}

/// @nodoc
class __$$LogInImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$LogInImpl>
    implements _$$LogInImplCopyWith<$Res> {
  __$$LogInImplCopyWithImpl(
      _$LogInImpl _value, $Res Function(_$LogInImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
  }) {
    return _then(_$LogInImpl(
      null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$LogInImpl implements _LogIn {
  const _$LogInImpl(this.email, this.password);

  @override
  final String email;
  @override
  final String password;

  @override
  String toString() {
    return 'AuthEvent.logIn(email: $email, password: $password)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LogInImpl &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email, password);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LogInImplCopyWith<_$LogInImpl> get copyWith =>
      __$$LogInImplCopyWithImpl<_$LogInImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() startApp,
    required TResult Function(String email, String password) logIn,
    required TResult Function(
            String email, String password, String username, String fullName)
        createUser,
    required TResult Function() logOut,
  }) {
    return logIn(email, password);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? startApp,
    TResult? Function(String email, String password)? logIn,
    TResult? Function(
            String email, String password, String username, String fullName)?
        createUser,
    TResult? Function()? logOut,
  }) {
    return logIn?.call(email, password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? startApp,
    TResult Function(String email, String password)? logIn,
    TResult Function(
            String email, String password, String username, String fullName)?
        createUser,
    TResult Function()? logOut,
    required TResult orElse(),
  }) {
    if (logIn != null) {
      return logIn(email, password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_StartApp value) startApp,
    required TResult Function(_LogIn value) logIn,
    required TResult Function(_CreateUser value) createUser,
    required TResult Function(_LogOut value) logOut,
  }) {
    return logIn(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_StartApp value)? startApp,
    TResult? Function(_LogIn value)? logIn,
    TResult? Function(_CreateUser value)? createUser,
    TResult? Function(_LogOut value)? logOut,
  }) {
    return logIn?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_StartApp value)? startApp,
    TResult Function(_LogIn value)? logIn,
    TResult Function(_CreateUser value)? createUser,
    TResult Function(_LogOut value)? logOut,
    required TResult orElse(),
  }) {
    if (logIn != null) {
      return logIn(this);
    }
    return orElse();
  }
}

abstract class _LogIn implements AuthEvent {
  const factory _LogIn(final String email, final String password) = _$LogInImpl;

  String get email;
  String get password;
  @JsonKey(ignore: true)
  _$$LogInImplCopyWith<_$LogInImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CreateUserImplCopyWith<$Res> {
  factory _$$CreateUserImplCopyWith(
          _$CreateUserImpl value, $Res Function(_$CreateUserImpl) then) =
      __$$CreateUserImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String email, String password, String username, String fullName});
}

/// @nodoc
class __$$CreateUserImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$CreateUserImpl>
    implements _$$CreateUserImplCopyWith<$Res> {
  __$$CreateUserImplCopyWithImpl(
      _$CreateUserImpl _value, $Res Function(_$CreateUserImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
    Object? username = null,
    Object? fullName = null,
  }) {
    return _then(_$CreateUserImpl(
      null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      null == fullName
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$CreateUserImpl implements _CreateUser {
  const _$CreateUserImpl(
      this.email, this.password, this.username, this.fullName);

  @override
  final String email;
  @override
  final String password;
  @override
  final String username;
  @override
  final String fullName;

  @override
  String toString() {
    return 'AuthEvent.createUser(email: $email, password: $password, username: $username, fullName: $fullName)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateUserImpl &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.fullName, fullName) ||
                other.fullName == fullName));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, email, password, username, fullName);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateUserImplCopyWith<_$CreateUserImpl> get copyWith =>
      __$$CreateUserImplCopyWithImpl<_$CreateUserImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() startApp,
    required TResult Function(String email, String password) logIn,
    required TResult Function(
            String email, String password, String username, String fullName)
        createUser,
    required TResult Function() logOut,
  }) {
    return createUser(email, password, username, fullName);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? startApp,
    TResult? Function(String email, String password)? logIn,
    TResult? Function(
            String email, String password, String username, String fullName)?
        createUser,
    TResult? Function()? logOut,
  }) {
    return createUser?.call(email, password, username, fullName);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? startApp,
    TResult Function(String email, String password)? logIn,
    TResult Function(
            String email, String password, String username, String fullName)?
        createUser,
    TResult Function()? logOut,
    required TResult orElse(),
  }) {
    if (createUser != null) {
      return createUser(email, password, username, fullName);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_StartApp value) startApp,
    required TResult Function(_LogIn value) logIn,
    required TResult Function(_CreateUser value) createUser,
    required TResult Function(_LogOut value) logOut,
  }) {
    return createUser(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_StartApp value)? startApp,
    TResult? Function(_LogIn value)? logIn,
    TResult? Function(_CreateUser value)? createUser,
    TResult? Function(_LogOut value)? logOut,
  }) {
    return createUser?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_StartApp value)? startApp,
    TResult Function(_LogIn value)? logIn,
    TResult Function(_CreateUser value)? createUser,
    TResult Function(_LogOut value)? logOut,
    required TResult orElse(),
  }) {
    if (createUser != null) {
      return createUser(this);
    }
    return orElse();
  }
}

abstract class _CreateUser implements AuthEvent {
  const factory _CreateUser(final String email, final String password,
      final String username, final String fullName) = _$CreateUserImpl;

  String get email;
  String get password;
  String get username;
  String get fullName;
  @JsonKey(ignore: true)
  _$$CreateUserImplCopyWith<_$CreateUserImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LogOutImplCopyWith<$Res> {
  factory _$$LogOutImplCopyWith(
          _$LogOutImpl value, $Res Function(_$LogOutImpl) then) =
      __$$LogOutImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LogOutImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$LogOutImpl>
    implements _$$LogOutImplCopyWith<$Res> {
  __$$LogOutImplCopyWithImpl(
      _$LogOutImpl _value, $Res Function(_$LogOutImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LogOutImpl implements _LogOut {
  const _$LogOutImpl();

  @override
  String toString() {
    return 'AuthEvent.logOut()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LogOutImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() startApp,
    required TResult Function(String email, String password) logIn,
    required TResult Function(
            String email, String password, String username, String fullName)
        createUser,
    required TResult Function() logOut,
  }) {
    return logOut();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? startApp,
    TResult? Function(String email, String password)? logIn,
    TResult? Function(
            String email, String password, String username, String fullName)?
        createUser,
    TResult? Function()? logOut,
  }) {
    return logOut?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? startApp,
    TResult Function(String email, String password)? logIn,
    TResult Function(
            String email, String password, String username, String fullName)?
        createUser,
    TResult Function()? logOut,
    required TResult orElse(),
  }) {
    if (logOut != null) {
      return logOut();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_StartApp value) startApp,
    required TResult Function(_LogIn value) logIn,
    required TResult Function(_CreateUser value) createUser,
    required TResult Function(_LogOut value) logOut,
  }) {
    return logOut(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_StartApp value)? startApp,
    TResult? Function(_LogIn value)? logIn,
    TResult? Function(_CreateUser value)? createUser,
    TResult? Function(_LogOut value)? logOut,
  }) {
    return logOut?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_StartApp value)? startApp,
    TResult Function(_LogIn value)? logIn,
    TResult Function(_CreateUser value)? createUser,
    TResult Function(_LogOut value)? logOut,
    required TResult orElse(),
  }) {
    if (logOut != null) {
      return logOut(this);
    }
    return orElse();
  }
}

abstract class _LogOut implements AuthEvent {
  const factory _LogOut() = _$LogOutImpl;
}

/// @nodoc
mixin _$AuthState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() appStarted,
    required TResult Function(int uid) loggedIn,
    required TResult Function() registered,
    required TResult Function() loading,
    required TResult Function(String error) error,
    required TResult Function() loggedOut,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? appStarted,
    TResult? Function(int uid)? loggedIn,
    TResult? Function()? registered,
    TResult? Function()? loading,
    TResult? Function(String error)? error,
    TResult? Function()? loggedOut,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? appStarted,
    TResult Function(int uid)? loggedIn,
    TResult Function()? registered,
    TResult Function()? loading,
    TResult Function(String error)? error,
    TResult Function()? loggedOut,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AppStarted value) appStarted,
    required TResult Function(_LoggedIn value) loggedIn,
    required TResult Function(_Registered value) registered,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Error value) error,
    required TResult Function(_LoggedOut value) loggedOut,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AppStarted value)? appStarted,
    TResult? Function(_LoggedIn value)? loggedIn,
    TResult? Function(_Registered value)? registered,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Error value)? error,
    TResult? Function(_LoggedOut value)? loggedOut,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AppStarted value)? appStarted,
    TResult Function(_LoggedIn value)? loggedIn,
    TResult Function(_Registered value)? registered,
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
    TResult Function(_LoggedOut value)? loggedOut,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthStateCopyWith<$Res> {
  factory $AuthStateCopyWith(AuthState value, $Res Function(AuthState) then) =
      _$AuthStateCopyWithImpl<$Res, AuthState>;
}

/// @nodoc
class _$AuthStateCopyWithImpl<$Res, $Val extends AuthState>
    implements $AuthStateCopyWith<$Res> {
  _$AuthStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$AppStartedImplCopyWith<$Res> {
  factory _$$AppStartedImplCopyWith(
          _$AppStartedImpl value, $Res Function(_$AppStartedImpl) then) =
      __$$AppStartedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AppStartedImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$AppStartedImpl>
    implements _$$AppStartedImplCopyWith<$Res> {
  __$$AppStartedImplCopyWithImpl(
      _$AppStartedImpl _value, $Res Function(_$AppStartedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$AppStartedImpl implements _AppStarted {
  const _$AppStartedImpl();

  @override
  String toString() {
    return 'AuthState.appStarted()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$AppStartedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() appStarted,
    required TResult Function(int uid) loggedIn,
    required TResult Function() registered,
    required TResult Function() loading,
    required TResult Function(String error) error,
    required TResult Function() loggedOut,
  }) {
    return appStarted();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? appStarted,
    TResult? Function(int uid)? loggedIn,
    TResult? Function()? registered,
    TResult? Function()? loading,
    TResult? Function(String error)? error,
    TResult? Function()? loggedOut,
  }) {
    return appStarted?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? appStarted,
    TResult Function(int uid)? loggedIn,
    TResult Function()? registered,
    TResult Function()? loading,
    TResult Function(String error)? error,
    TResult Function()? loggedOut,
    required TResult orElse(),
  }) {
    if (appStarted != null) {
      return appStarted();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AppStarted value) appStarted,
    required TResult Function(_LoggedIn value) loggedIn,
    required TResult Function(_Registered value) registered,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Error value) error,
    required TResult Function(_LoggedOut value) loggedOut,
  }) {
    return appStarted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AppStarted value)? appStarted,
    TResult? Function(_LoggedIn value)? loggedIn,
    TResult? Function(_Registered value)? registered,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Error value)? error,
    TResult? Function(_LoggedOut value)? loggedOut,
  }) {
    return appStarted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AppStarted value)? appStarted,
    TResult Function(_LoggedIn value)? loggedIn,
    TResult Function(_Registered value)? registered,
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
    TResult Function(_LoggedOut value)? loggedOut,
    required TResult orElse(),
  }) {
    if (appStarted != null) {
      return appStarted(this);
    }
    return orElse();
  }
}

abstract class _AppStarted implements AuthState {
  const factory _AppStarted() = _$AppStartedImpl;
}

/// @nodoc
abstract class _$$LoggedInImplCopyWith<$Res> {
  factory _$$LoggedInImplCopyWith(
          _$LoggedInImpl value, $Res Function(_$LoggedInImpl) then) =
      __$$LoggedInImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int uid});
}

/// @nodoc
class __$$LoggedInImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$LoggedInImpl>
    implements _$$LoggedInImplCopyWith<$Res> {
  __$$LoggedInImplCopyWithImpl(
      _$LoggedInImpl _value, $Res Function(_$LoggedInImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uid = null,
  }) {
    return _then(_$LoggedInImpl(
      null == uid
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$LoggedInImpl implements _LoggedIn {
  const _$LoggedInImpl(this.uid);

  @override
  final int uid;

  @override
  String toString() {
    return 'AuthState.loggedIn(uid: $uid)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoggedInImpl &&
            (identical(other.uid, uid) || other.uid == uid));
  }

  @override
  int get hashCode => Object.hash(runtimeType, uid);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoggedInImplCopyWith<_$LoggedInImpl> get copyWith =>
      __$$LoggedInImplCopyWithImpl<_$LoggedInImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() appStarted,
    required TResult Function(int uid) loggedIn,
    required TResult Function() registered,
    required TResult Function() loading,
    required TResult Function(String error) error,
    required TResult Function() loggedOut,
  }) {
    return loggedIn(uid);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? appStarted,
    TResult? Function(int uid)? loggedIn,
    TResult? Function()? registered,
    TResult? Function()? loading,
    TResult? Function(String error)? error,
    TResult? Function()? loggedOut,
  }) {
    return loggedIn?.call(uid);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? appStarted,
    TResult Function(int uid)? loggedIn,
    TResult Function()? registered,
    TResult Function()? loading,
    TResult Function(String error)? error,
    TResult Function()? loggedOut,
    required TResult orElse(),
  }) {
    if (loggedIn != null) {
      return loggedIn(uid);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AppStarted value) appStarted,
    required TResult Function(_LoggedIn value) loggedIn,
    required TResult Function(_Registered value) registered,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Error value) error,
    required TResult Function(_LoggedOut value) loggedOut,
  }) {
    return loggedIn(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AppStarted value)? appStarted,
    TResult? Function(_LoggedIn value)? loggedIn,
    TResult? Function(_Registered value)? registered,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Error value)? error,
    TResult? Function(_LoggedOut value)? loggedOut,
  }) {
    return loggedIn?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AppStarted value)? appStarted,
    TResult Function(_LoggedIn value)? loggedIn,
    TResult Function(_Registered value)? registered,
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
    TResult Function(_LoggedOut value)? loggedOut,
    required TResult orElse(),
  }) {
    if (loggedIn != null) {
      return loggedIn(this);
    }
    return orElse();
  }
}

abstract class _LoggedIn implements AuthState {
  const factory _LoggedIn(final int uid) = _$LoggedInImpl;

  int get uid;
  @JsonKey(ignore: true)
  _$$LoggedInImplCopyWith<_$LoggedInImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RegisteredImplCopyWith<$Res> {
  factory _$$RegisteredImplCopyWith(
          _$RegisteredImpl value, $Res Function(_$RegisteredImpl) then) =
      __$$RegisteredImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$RegisteredImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$RegisteredImpl>
    implements _$$RegisteredImplCopyWith<$Res> {
  __$$RegisteredImplCopyWithImpl(
      _$RegisteredImpl _value, $Res Function(_$RegisteredImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$RegisteredImpl implements _Registered {
  const _$RegisteredImpl();

  @override
  String toString() {
    return 'AuthState.registered()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$RegisteredImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() appStarted,
    required TResult Function(int uid) loggedIn,
    required TResult Function() registered,
    required TResult Function() loading,
    required TResult Function(String error) error,
    required TResult Function() loggedOut,
  }) {
    return registered();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? appStarted,
    TResult? Function(int uid)? loggedIn,
    TResult? Function()? registered,
    TResult? Function()? loading,
    TResult? Function(String error)? error,
    TResult? Function()? loggedOut,
  }) {
    return registered?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? appStarted,
    TResult Function(int uid)? loggedIn,
    TResult Function()? registered,
    TResult Function()? loading,
    TResult Function(String error)? error,
    TResult Function()? loggedOut,
    required TResult orElse(),
  }) {
    if (registered != null) {
      return registered();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AppStarted value) appStarted,
    required TResult Function(_LoggedIn value) loggedIn,
    required TResult Function(_Registered value) registered,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Error value) error,
    required TResult Function(_LoggedOut value) loggedOut,
  }) {
    return registered(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AppStarted value)? appStarted,
    TResult? Function(_LoggedIn value)? loggedIn,
    TResult? Function(_Registered value)? registered,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Error value)? error,
    TResult? Function(_LoggedOut value)? loggedOut,
  }) {
    return registered?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AppStarted value)? appStarted,
    TResult Function(_LoggedIn value)? loggedIn,
    TResult Function(_Registered value)? registered,
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
    TResult Function(_LoggedOut value)? loggedOut,
    required TResult orElse(),
  }) {
    if (registered != null) {
      return registered(this);
    }
    return orElse();
  }
}

abstract class _Registered implements AuthState {
  const factory _Registered() = _$RegisteredImpl;
}

/// @nodoc
abstract class _$$LoadingImplCopyWith<$Res> {
  factory _$$LoadingImplCopyWith(
          _$LoadingImpl value, $Res Function(_$LoadingImpl) then) =
      __$$LoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$LoadingImpl>
    implements _$$LoadingImplCopyWith<$Res> {
  __$$LoadingImplCopyWithImpl(
      _$LoadingImpl _value, $Res Function(_$LoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoadingImpl implements _Loading {
  const _$LoadingImpl();

  @override
  String toString() {
    return 'AuthState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() appStarted,
    required TResult Function(int uid) loggedIn,
    required TResult Function() registered,
    required TResult Function() loading,
    required TResult Function(String error) error,
    required TResult Function() loggedOut,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? appStarted,
    TResult? Function(int uid)? loggedIn,
    TResult? Function()? registered,
    TResult? Function()? loading,
    TResult? Function(String error)? error,
    TResult? Function()? loggedOut,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? appStarted,
    TResult Function(int uid)? loggedIn,
    TResult Function()? registered,
    TResult Function()? loading,
    TResult Function(String error)? error,
    TResult Function()? loggedOut,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AppStarted value) appStarted,
    required TResult Function(_LoggedIn value) loggedIn,
    required TResult Function(_Registered value) registered,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Error value) error,
    required TResult Function(_LoggedOut value) loggedOut,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AppStarted value)? appStarted,
    TResult? Function(_LoggedIn value)? loggedIn,
    TResult? Function(_Registered value)? registered,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Error value)? error,
    TResult? Function(_LoggedOut value)? loggedOut,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AppStarted value)? appStarted,
    TResult Function(_LoggedIn value)? loggedIn,
    TResult Function(_Registered value)? registered,
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
    TResult Function(_LoggedOut value)? loggedOut,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements AuthState {
  const factory _Loading() = _$LoadingImpl;
}

/// @nodoc
abstract class _$$ErrorImplCopyWith<$Res> {
  factory _$$ErrorImplCopyWith(
          _$ErrorImpl value, $Res Function(_$ErrorImpl) then) =
      __$$ErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String error});
}

/// @nodoc
class __$$ErrorImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$ErrorImpl>
    implements _$$ErrorImplCopyWith<$Res> {
  __$$ErrorImplCopyWithImpl(
      _$ErrorImpl _value, $Res Function(_$ErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$ErrorImpl(
      null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ErrorImpl implements _Error {
  const _$ErrorImpl(this.error);

  @override
  final String error;

  @override
  String toString() {
    return 'AuthState.error(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorImpl &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      __$$ErrorImplCopyWithImpl<_$ErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() appStarted,
    required TResult Function(int uid) loggedIn,
    required TResult Function() registered,
    required TResult Function() loading,
    required TResult Function(String error) error,
    required TResult Function() loggedOut,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? appStarted,
    TResult? Function(int uid)? loggedIn,
    TResult? Function()? registered,
    TResult? Function()? loading,
    TResult? Function(String error)? error,
    TResult? Function()? loggedOut,
  }) {
    return error?.call(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? appStarted,
    TResult Function(int uid)? loggedIn,
    TResult Function()? registered,
    TResult Function()? loading,
    TResult Function(String error)? error,
    TResult Function()? loggedOut,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AppStarted value) appStarted,
    required TResult Function(_LoggedIn value) loggedIn,
    required TResult Function(_Registered value) registered,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Error value) error,
    required TResult Function(_LoggedOut value) loggedOut,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AppStarted value)? appStarted,
    TResult? Function(_LoggedIn value)? loggedIn,
    TResult? Function(_Registered value)? registered,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Error value)? error,
    TResult? Function(_LoggedOut value)? loggedOut,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AppStarted value)? appStarted,
    TResult Function(_LoggedIn value)? loggedIn,
    TResult Function(_Registered value)? registered,
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
    TResult Function(_LoggedOut value)? loggedOut,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Error implements AuthState {
  const factory _Error(final String error) = _$ErrorImpl;

  String get error;
  @JsonKey(ignore: true)
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoggedOutImplCopyWith<$Res> {
  factory _$$LoggedOutImplCopyWith(
          _$LoggedOutImpl value, $Res Function(_$LoggedOutImpl) then) =
      __$$LoggedOutImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoggedOutImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$LoggedOutImpl>
    implements _$$LoggedOutImplCopyWith<$Res> {
  __$$LoggedOutImplCopyWithImpl(
      _$LoggedOutImpl _value, $Res Function(_$LoggedOutImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoggedOutImpl implements _LoggedOut {
  const _$LoggedOutImpl();

  @override
  String toString() {
    return 'AuthState.loggedOut()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoggedOutImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() appStarted,
    required TResult Function(int uid) loggedIn,
    required TResult Function() registered,
    required TResult Function() loading,
    required TResult Function(String error) error,
    required TResult Function() loggedOut,
  }) {
    return loggedOut();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? appStarted,
    TResult? Function(int uid)? loggedIn,
    TResult? Function()? registered,
    TResult? Function()? loading,
    TResult? Function(String error)? error,
    TResult? Function()? loggedOut,
  }) {
    return loggedOut?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? appStarted,
    TResult Function(int uid)? loggedIn,
    TResult Function()? registered,
    TResult Function()? loading,
    TResult Function(String error)? error,
    TResult Function()? loggedOut,
    required TResult orElse(),
  }) {
    if (loggedOut != null) {
      return loggedOut();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AppStarted value) appStarted,
    required TResult Function(_LoggedIn value) loggedIn,
    required TResult Function(_Registered value) registered,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Error value) error,
    required TResult Function(_LoggedOut value) loggedOut,
  }) {
    return loggedOut(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AppStarted value)? appStarted,
    TResult? Function(_LoggedIn value)? loggedIn,
    TResult? Function(_Registered value)? registered,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Error value)? error,
    TResult? Function(_LoggedOut value)? loggedOut,
  }) {
    return loggedOut?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AppStarted value)? appStarted,
    TResult Function(_LoggedIn value)? loggedIn,
    TResult Function(_Registered value)? registered,
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
    TResult Function(_LoggedOut value)? loggedOut,
    required TResult orElse(),
  }) {
    if (loggedOut != null) {
      return loggedOut(this);
    }
    return orElse();
  }
}

abstract class _LoggedOut implements AuthState {
  const factory _LoggedOut() = _$LoggedOutImpl;
}
