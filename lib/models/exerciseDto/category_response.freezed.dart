// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'category_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CategoryResponse _$CategoryResponseFromJson(Map<String, dynamic> json) {
  return _CategoryResponseDto.fromJson(json);
}

/// @nodoc
mixin _$CategoryResponse {
  List<CategoryDto> get categories => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CategoryResponseCopyWith<CategoryResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CategoryResponseCopyWith<$Res> {
  factory $CategoryResponseCopyWith(
          CategoryResponse value, $Res Function(CategoryResponse) then) =
      _$CategoryResponseCopyWithImpl<$Res, CategoryResponse>;
  @useResult
  $Res call({List<CategoryDto> categories});
}

/// @nodoc
class _$CategoryResponseCopyWithImpl<$Res, $Val extends CategoryResponse>
    implements $CategoryResponseCopyWith<$Res> {
  _$CategoryResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? categories = null,
  }) {
    return _then(_value.copyWith(
      categories: null == categories
          ? _value.categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<CategoryDto>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CategoryResponseDtoImplCopyWith<$Res>
    implements $CategoryResponseCopyWith<$Res> {
  factory _$$CategoryResponseDtoImplCopyWith(_$CategoryResponseDtoImpl value,
          $Res Function(_$CategoryResponseDtoImpl) then) =
      __$$CategoryResponseDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<CategoryDto> categories});
}

/// @nodoc
class __$$CategoryResponseDtoImplCopyWithImpl<$Res>
    extends _$CategoryResponseCopyWithImpl<$Res, _$CategoryResponseDtoImpl>
    implements _$$CategoryResponseDtoImplCopyWith<$Res> {
  __$$CategoryResponseDtoImplCopyWithImpl(_$CategoryResponseDtoImpl _value,
      $Res Function(_$CategoryResponseDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? categories = null,
  }) {
    return _then(_$CategoryResponseDtoImpl(
      categories: null == categories
          ? _value._categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<CategoryDto>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CategoryResponseDtoImpl implements _CategoryResponseDto {
  const _$CategoryResponseDtoImpl({required final List<CategoryDto> categories})
      : _categories = categories;

  factory _$CategoryResponseDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$CategoryResponseDtoImplFromJson(json);

  final List<CategoryDto> _categories;
  @override
  List<CategoryDto> get categories {
    if (_categories is EqualUnmodifiableListView) return _categories;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_categories);
  }

  @override
  String toString() {
    return 'CategoryResponse(categories: $categories)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CategoryResponseDtoImpl &&
            const DeepCollectionEquality()
                .equals(other._categories, _categories));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_categories));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CategoryResponseDtoImplCopyWith<_$CategoryResponseDtoImpl> get copyWith =>
      __$$CategoryResponseDtoImplCopyWithImpl<_$CategoryResponseDtoImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CategoryResponseDtoImplToJson(
      this,
    );
  }
}

abstract class _CategoryResponseDto implements CategoryResponse {
  const factory _CategoryResponseDto(
          {required final List<CategoryDto> categories}) =
      _$CategoryResponseDtoImpl;

  factory _CategoryResponseDto.fromJson(Map<String, dynamic> json) =
      _$CategoryResponseDtoImpl.fromJson;

  @override
  List<CategoryDto> get categories;
  @override
  @JsonKey(ignore: true)
  _$$CategoryResponseDtoImplCopyWith<_$CategoryResponseDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
