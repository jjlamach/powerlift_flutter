// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CreateUserImpl _$$CreateUserImplFromJson(Map<String, dynamic> json) =>
    _$CreateUserImpl(
      Username: json['Username'] as String,
      Password: json['Password'] as String,
      full_name: json['full_name'] as String?,
      Email: json['Email'] as String,
    );

Map<String, dynamic> _$$CreateUserImplToJson(_$CreateUserImpl instance) =>
    <String, dynamic>{
      'Username': instance.Username,
      'Password': instance.Password,
      'full_name': instance.full_name,
      'Email': instance.Email,
    };
