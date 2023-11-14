import 'package:freezed_annotation/freezed_annotation.dart';

part 'exercise_dto.freezed.dart';
part 'exercise_dto.g.dart';

@freezed
class ExerciseDto with _$ExerciseDto {
  const factory ExerciseDto({
    @JsonKey(name: 'ID') required int Id,
    @JsonKey(name: 'Name') required String name,
    @JsonKey(name: 'Updatetime') required String updateTime,
    @JsonKey(name: 'Createtime') required String createTime,
    @JsonKey(name: 'Categoryid') Categoryid? categoryid,
    @JsonKey(name: 'Image') required Image image,
  }) = _ExerciseDto;

  factory ExerciseDto.fromJson(Map<String, dynamic> json) =>
      _$ExerciseDtoFromJson(json);
}

@freezed
class Image with _$Image {
  const factory Image({
    @JsonKey(name: 'String', defaultValue: "") String? string,
    @JsonKey(name: 'Valid') required bool valid,
  }) = _Image;

  factory Image.fromJson(Map<String, dynamic> json) => _$ImageFromJson(json);
}

@freezed
class Categoryid with _$Categoryid {
  const factory Categoryid({
    @JsonKey(name: 'Int32') required int int32,
    @JsonKey(name: 'Valid') required bool valid,
  }) = _Categoryid;

  factory Categoryid.fromJson(Map<String, dynamic> json) =>
      _$CategoryidFromJson(json);
}
