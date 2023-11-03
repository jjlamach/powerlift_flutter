import 'package:freezed_annotation/freezed_annotation.dart';

part 'category_dto.freezed.dart';

part 'category_dto.g.dart';

@freezed
class CategoryDto with _$CategoryDto {
  const factory CategoryDto({
    required int ID,
    required String Name,
  }) = _Category;

  factory CategoryDto.fromJson(Map<String, dynamic> json) =>
      _$CategoryDtoFromJson(json);
}
