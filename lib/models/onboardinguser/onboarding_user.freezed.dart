// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'onboarding_user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$OnboardingUser {
  String? get email => throw _privateConstructorUsedError;
  String? get password => throw _privateConstructorUsedError;
  String? get confirmPassword => throw _privateConstructorUsedError;
  String? get username => throw _privateConstructorUsedError;
  String? get fullName => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $OnboardingUserCopyWith<OnboardingUser> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OnboardingUserCopyWith<$Res> {
  factory $OnboardingUserCopyWith(
          OnboardingUser value, $Res Function(OnboardingUser) then) =
      _$OnboardingUserCopyWithImpl<$Res, OnboardingUser>;
  @useResult
  $Res call(
      {String? email,
      String? password,
      String? confirmPassword,
      String? username,
      String? fullName});
}

/// @nodoc
class _$OnboardingUserCopyWithImpl<$Res, $Val extends OnboardingUser>
    implements $OnboardingUserCopyWith<$Res> {
  _$OnboardingUserCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = freezed,
    Object? password = freezed,
    Object? confirmPassword = freezed,
    Object? username = freezed,
    Object? fullName = freezed,
  }) {
    return _then(_value.copyWith(
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      password: freezed == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String?,
      confirmPassword: freezed == confirmPassword
          ? _value.confirmPassword
          : confirmPassword // ignore: cast_nullable_to_non_nullable
              as String?,
      username: freezed == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String?,
      fullName: freezed == fullName
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$OnboardingUserImplCopyWith<$Res>
    implements $OnboardingUserCopyWith<$Res> {
  factory _$$OnboardingUserImplCopyWith(_$OnboardingUserImpl value,
          $Res Function(_$OnboardingUserImpl) then) =
      __$$OnboardingUserImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? email,
      String? password,
      String? confirmPassword,
      String? username,
      String? fullName});
}

/// @nodoc
class __$$OnboardingUserImplCopyWithImpl<$Res>
    extends _$OnboardingUserCopyWithImpl<$Res, _$OnboardingUserImpl>
    implements _$$OnboardingUserImplCopyWith<$Res> {
  __$$OnboardingUserImplCopyWithImpl(
      _$OnboardingUserImpl _value, $Res Function(_$OnboardingUserImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = freezed,
    Object? password = freezed,
    Object? confirmPassword = freezed,
    Object? username = freezed,
    Object? fullName = freezed,
  }) {
    return _then(_$OnboardingUserImpl(
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      password: freezed == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String?,
      confirmPassword: freezed == confirmPassword
          ? _value.confirmPassword
          : confirmPassword // ignore: cast_nullable_to_non_nullable
              as String?,
      username: freezed == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String?,
      fullName: freezed == fullName
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$OnboardingUserImpl implements _OnboardingUser {
  const _$OnboardingUserImpl(
      {this.email,
      this.password,
      this.confirmPassword,
      this.username,
      this.fullName});

  @override
  final String? email;
  @override
  final String? password;
  @override
  final String? confirmPassword;
  @override
  final String? username;
  @override
  final String? fullName;

  @override
  String toString() {
    return 'OnboardingUser(email: $email, password: $password, confirmPassword: $confirmPassword, username: $username, fullName: $fullName)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OnboardingUserImpl &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.confirmPassword, confirmPassword) ||
                other.confirmPassword == confirmPassword) &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.fullName, fullName) ||
                other.fullName == fullName));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, email, password, confirmPassword, username, fullName);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OnboardingUserImplCopyWith<_$OnboardingUserImpl> get copyWith =>
      __$$OnboardingUserImplCopyWithImpl<_$OnboardingUserImpl>(
          this, _$identity);
}

abstract class _OnboardingUser implements OnboardingUser {
  const factory _OnboardingUser(
      {final String? email,
      final String? password,
      final String? confirmPassword,
      final String? username,
      final String? fullName}) = _$OnboardingUserImpl;

  @override
  String? get email;
  @override
  String? get password;
  @override
  String? get confirmPassword;
  @override
  String? get username;
  @override
  String? get fullName;
  @override
  @JsonKey(ignore: true)
  _$$OnboardingUserImplCopyWith<_$OnboardingUserImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
