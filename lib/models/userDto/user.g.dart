// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

User _$UserFromJson(Map<String, dynamic> json) => User(
      Id: json['Id'] as int,
      username: json['username'] as String,
      full_name: json['full_name'] as String,
      email: json['email'] as String,
      password_changed_at: json['password_changed_at'] as String,
      created_at: json['created_at'] as String,
    );

Map<String, dynamic> _$UserToJson(User instance) => <String, dynamic>{
      'Id': instance.Id,
      'username': instance.username,
      'full_name': instance.full_name,
      'email': instance.email,
      'password_changed_at': instance.password_changed_at,
      'created_at': instance.created_at,
    };
