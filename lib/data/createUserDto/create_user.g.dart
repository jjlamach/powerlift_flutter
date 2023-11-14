// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CreateUser _$CreateUserFromJson(Map<String, dynamic> json) => CreateUser(
      json['Username'] as String,
      json['Password'] as String,
      json['full_name'] as String,
      json['Email'] as String,
    );

Map<String, dynamic> _$CreateUserToJson(CreateUser instance) =>
    <String, dynamic>{
      'Username': instance.Username,
      'Password': instance.Password,
      'full_name': instance.full_name,
      'Email': instance.Email,
    };
