// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'category_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CategoryResponseDtoImpl _$$CategoryResponseDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$CategoryResponseDtoImpl(
      categories: (json['categories'] as List<dynamic>)
          .map((e) => CategoryDto.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$CategoryResponseDtoImplToJson(
        _$CategoryResponseDtoImpl instance) =>
    <String, dynamic>{
      'categories': instance.categories,
    };
