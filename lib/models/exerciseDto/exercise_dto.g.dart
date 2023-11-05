// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'exercise_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ExerciseDtoImpl _$$ExerciseDtoImplFromJson(Map<String, dynamic> json) =>
    _$ExerciseDtoImpl(
      Id: json['ID'] as int,
      name: json['Name'] as String,
      updateTime: json['Updatetime'] as String,
      createTime: json['Createtime'] as String,
      categoryid: json['Categoryid'] == null
          ? null
          : Categoryid.fromJson(json['Categoryid'] as Map<String, dynamic>),
      image: Image.fromJson(json['Image'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ExerciseDtoImplToJson(_$ExerciseDtoImpl instance) =>
    <String, dynamic>{
      'ID': instance.Id,
      'Name': instance.name,
      'Updatetime': instance.updateTime,
      'Createtime': instance.createTime,
      'Categoryid': instance.categoryid,
      'Image': instance.image,
    };

_$ImageImpl _$$ImageImplFromJson(Map<String, dynamic> json) => _$ImageImpl(
      string: json['String'] as String? ?? '',
      valid: json['Valid'] as bool,
    );

Map<String, dynamic> _$$ImageImplToJson(_$ImageImpl instance) =>
    <String, dynamic>{
      'String': instance.string,
      'Valid': instance.valid,
    };

_$CategoryidImpl _$$CategoryidImplFromJson(Map<String, dynamic> json) =>
    _$CategoryidImpl(
      int32: json['Int32'] as int,
      valid: json['Valid'] as bool,
    );

Map<String, dynamic> _$$CategoryidImplToJson(_$CategoryidImpl instance) =>
    <String, dynamic>{
      'Int32': instance.int32,
      'Valid': instance.valid,
    };
