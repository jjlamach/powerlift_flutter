import 'package:freezed_annotation/freezed_annotation.dart';

import 'category_dto.dart';

part 'category_response.freezed.dart';
part 'category_response.g.dart';

@freezed
class CategoryResponse with _$CategoryResponse {
  const factory CategoryResponse({
    required List<CategoryDto> categories,
  }) = _CategoryResponseDto;

  factory CategoryResponse.fromJson(Map<String, dynamic> json) =>
      _$CategoryResponseFromJson(json);
}
