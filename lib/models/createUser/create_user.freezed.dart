// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CreateUser _$CreateUserFromJson(Map<String, dynamic> json) {
  return _CreateUser.fromJson(json);
}

/// @nodoc
mixin _$CreateUser {
  String get Username => throw _privateConstructorUsedError;
  String get Password => throw _privateConstructorUsedError;
  String? get full_name => throw _privateConstructorUsedError;
  String get Email => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CreateUserCopyWith<CreateUser> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateUserCopyWith<$Res> {
  factory $CreateUserCopyWith(
          CreateUser value, $Res Function(CreateUser) then) =
      _$CreateUserCopyWithImpl<$Res, CreateUser>;
  @useResult
  $Res call(
      {String Username, String Password, String? full_name, String Email});
}

/// @nodoc
class _$CreateUserCopyWithImpl<$Res, $Val extends CreateUser>
    implements $CreateUserCopyWith<$Res> {
  _$CreateUserCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? Username = null,
    Object? Password = null,
    Object? full_name = freezed,
    Object? Email = null,
  }) {
    return _then(_value.copyWith(
      Username: null == Username
          ? _value.Username
          : Username // ignore: cast_nullable_to_non_nullable
              as String,
      Password: null == Password
          ? _value.Password
          : Password // ignore: cast_nullable_to_non_nullable
              as String,
      full_name: freezed == full_name
          ? _value.full_name
          : full_name // ignore: cast_nullable_to_non_nullable
              as String?,
      Email: null == Email
          ? _value.Email
          : Email // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CreateUserImplCopyWith<$Res>
    implements $CreateUserCopyWith<$Res> {
  factory _$$CreateUserImplCopyWith(
          _$CreateUserImpl value, $Res Function(_$CreateUserImpl) then) =
      __$$CreateUserImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String Username, String Password, String? full_name, String Email});
}

/// @nodoc
class __$$CreateUserImplCopyWithImpl<$Res>
    extends _$CreateUserCopyWithImpl<$Res, _$CreateUserImpl>
    implements _$$CreateUserImplCopyWith<$Res> {
  __$$CreateUserImplCopyWithImpl(
      _$CreateUserImpl _value, $Res Function(_$CreateUserImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? Username = null,
    Object? Password = null,
    Object? full_name = freezed,
    Object? Email = null,
  }) {
    return _then(_$CreateUserImpl(
      Username: null == Username
          ? _value.Username
          : Username // ignore: cast_nullable_to_non_nullable
              as String,
      Password: null == Password
          ? _value.Password
          : Password // ignore: cast_nullable_to_non_nullable
              as String,
      full_name: freezed == full_name
          ? _value.full_name
          : full_name // ignore: cast_nullable_to_non_nullable
              as String?,
      Email: null == Email
          ? _value.Email
          : Email // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CreateUserImpl implements _CreateUser {
  const _$CreateUserImpl(
      {required this.Username,
      required this.Password,
      this.full_name,
      required this.Email});

  factory _$CreateUserImpl.fromJson(Map<String, dynamic> json) =>
      _$$CreateUserImplFromJson(json);

  @override
  final String Username;
  @override
  final String Password;
  @override
  final String? full_name;
  @override
  final String Email;

  @override
  String toString() {
    return 'CreateUser(Username: $Username, Password: $Password, full_name: $full_name, Email: $Email)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateUserImpl &&
            (identical(other.Username, Username) ||
                other.Username == Username) &&
            (identical(other.Password, Password) ||
                other.Password == Password) &&
            (identical(other.full_name, full_name) ||
                other.full_name == full_name) &&
            (identical(other.Email, Email) || other.Email == Email));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, Username, Password, full_name, Email);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateUserImplCopyWith<_$CreateUserImpl> get copyWith =>
      __$$CreateUserImplCopyWithImpl<_$CreateUserImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CreateUserImplToJson(
      this,
    );
  }
}

abstract class _CreateUser implements CreateUser {
  const factory _CreateUser(
      {required final String Username,
      required final String Password,
      final String? full_name,
      required final String Email}) = _$CreateUserImpl;

  factory _CreateUser.fromJson(Map<String, dynamic> json) =
      _$CreateUserImpl.fromJson;

  @override
  String get Username;
  @override
  String get Password;
  @override
  String? get full_name;
  @override
  String get Email;
  @override
  @JsonKey(ignore: true)
  _$$CreateUserImplCopyWith<_$CreateUserImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
