// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'exercise_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ExerciseDto _$ExerciseDtoFromJson(Map<String, dynamic> json) {
  return _ExerciseDto.fromJson(json);
}

/// @nodoc
mixin _$ExerciseDto {
  @JsonKey(name: 'ID')
  int get Id => throw _privateConstructorUsedError;
  @JsonKey(name: 'Name')
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'Updatetime')
  String get updateTime => throw _privateConstructorUsedError;
  @JsonKey(name: 'Createtime')
  String get createTime => throw _privateConstructorUsedError;
  @JsonKey(name: 'Categoryid')
  Categoryid? get categoryid => throw _privateConstructorUsedError;
  @JsonKey(name: 'Image')
  Image get image => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ExerciseDtoCopyWith<ExerciseDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExerciseDtoCopyWith<$Res> {
  factory $ExerciseDtoCopyWith(
          ExerciseDto value, $Res Function(ExerciseDto) then) =
      _$ExerciseDtoCopyWithImpl<$Res, ExerciseDto>;
  @useResult
  $Res call(
      {@JsonKey(name: 'ID') int Id,
      @JsonKey(name: 'Name') String name,
      @JsonKey(name: 'Updatetime') String updateTime,
      @JsonKey(name: 'Createtime') String createTime,
      @JsonKey(name: 'Categoryid') Categoryid? categoryid,
      @JsonKey(name: 'Image') Image image});

  $CategoryidCopyWith<$Res>? get categoryid;
  $ImageCopyWith<$Res> get image;
}

/// @nodoc
class _$ExerciseDtoCopyWithImpl<$Res, $Val extends ExerciseDto>
    implements $ExerciseDtoCopyWith<$Res> {
  _$ExerciseDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? Id = null,
    Object? name = null,
    Object? updateTime = null,
    Object? createTime = null,
    Object? categoryid = freezed,
    Object? image = null,
  }) {
    return _then(_value.copyWith(
      Id: null == Id
          ? _value.Id
          : Id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      updateTime: null == updateTime
          ? _value.updateTime
          : updateTime // ignore: cast_nullable_to_non_nullable
              as String,
      createTime: null == createTime
          ? _value.createTime
          : createTime // ignore: cast_nullable_to_non_nullable
              as String,
      categoryid: freezed == categoryid
          ? _value.categoryid
          : categoryid // ignore: cast_nullable_to_non_nullable
              as Categoryid?,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as Image,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CategoryidCopyWith<$Res>? get categoryid {
    if (_value.categoryid == null) {
      return null;
    }

    return $CategoryidCopyWith<$Res>(_value.categoryid!, (value) {
      return _then(_value.copyWith(categoryid: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ImageCopyWith<$Res> get image {
    return $ImageCopyWith<$Res>(_value.image, (value) {
      return _then(_value.copyWith(image: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ExerciseDtoImplCopyWith<$Res>
    implements $ExerciseDtoCopyWith<$Res> {
  factory _$$ExerciseDtoImplCopyWith(
          _$ExerciseDtoImpl value, $Res Function(_$ExerciseDtoImpl) then) =
      __$$ExerciseDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'ID') int Id,
      @JsonKey(name: 'Name') String name,
      @JsonKey(name: 'Updatetime') String updateTime,
      @JsonKey(name: 'Createtime') String createTime,
      @JsonKey(name: 'Categoryid') Categoryid? categoryid,
      @JsonKey(name: 'Image') Image image});

  @override
  $CategoryidCopyWith<$Res>? get categoryid;
  @override
  $ImageCopyWith<$Res> get image;
}

/// @nodoc
class __$$ExerciseDtoImplCopyWithImpl<$Res>
    extends _$ExerciseDtoCopyWithImpl<$Res, _$ExerciseDtoImpl>
    implements _$$ExerciseDtoImplCopyWith<$Res> {
  __$$ExerciseDtoImplCopyWithImpl(
      _$ExerciseDtoImpl _value, $Res Function(_$ExerciseDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? Id = null,
    Object? name = null,
    Object? updateTime = null,
    Object? createTime = null,
    Object? categoryid = freezed,
    Object? image = null,
  }) {
    return _then(_$ExerciseDtoImpl(
      Id: null == Id
          ? _value.Id
          : Id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      updateTime: null == updateTime
          ? _value.updateTime
          : updateTime // ignore: cast_nullable_to_non_nullable
              as String,
      createTime: null == createTime
          ? _value.createTime
          : createTime // ignore: cast_nullable_to_non_nullable
              as String,
      categoryid: freezed == categoryid
          ? _value.categoryid
          : categoryid // ignore: cast_nullable_to_non_nullable
              as Categoryid?,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as Image,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ExerciseDtoImpl implements _ExerciseDto {
  const _$ExerciseDtoImpl(
      {@JsonKey(name: 'ID') required this.Id,
      @JsonKey(name: 'Name') required this.name,
      @JsonKey(name: 'Updatetime') required this.updateTime,
      @JsonKey(name: 'Createtime') required this.createTime,
      @JsonKey(name: 'Categoryid') this.categoryid,
      @JsonKey(name: 'Image') required this.image});

  factory _$ExerciseDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$ExerciseDtoImplFromJson(json);

  @override
  @JsonKey(name: 'ID')
  final int Id;
  @override
  @JsonKey(name: 'Name')
  final String name;
  @override
  @JsonKey(name: 'Updatetime')
  final String updateTime;
  @override
  @JsonKey(name: 'Createtime')
  final String createTime;
  @override
  @JsonKey(name: 'Categoryid')
  final Categoryid? categoryid;
  @override
  @JsonKey(name: 'Image')
  final Image image;

  @override
  String toString() {
    return 'ExerciseDto(Id: $Id, name: $name, updateTime: $updateTime, createTime: $createTime, categoryid: $categoryid, image: $image)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ExerciseDtoImpl &&
            (identical(other.Id, Id) || other.Id == Id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.updateTime, updateTime) ||
                other.updateTime == updateTime) &&
            (identical(other.createTime, createTime) ||
                other.createTime == createTime) &&
            (identical(other.categoryid, categoryid) ||
                other.categoryid == categoryid) &&
            (identical(other.image, image) || other.image == image));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, Id, name, updateTime, createTime, categoryid, image);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ExerciseDtoImplCopyWith<_$ExerciseDtoImpl> get copyWith =>
      __$$ExerciseDtoImplCopyWithImpl<_$ExerciseDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ExerciseDtoImplToJson(
      this,
    );
  }
}

abstract class _ExerciseDto implements ExerciseDto {
  const factory _ExerciseDto(
      {@JsonKey(name: 'ID') required final int Id,
      @JsonKey(name: 'Name') required final String name,
      @JsonKey(name: 'Updatetime') required final String updateTime,
      @JsonKey(name: 'Createtime') required final String createTime,
      @JsonKey(name: 'Categoryid') final Categoryid? categoryid,
      @JsonKey(name: 'Image') required final Image image}) = _$ExerciseDtoImpl;

  factory _ExerciseDto.fromJson(Map<String, dynamic> json) =
      _$ExerciseDtoImpl.fromJson;

  @override
  @JsonKey(name: 'ID')
  int get Id;
  @override
  @JsonKey(name: 'Name')
  String get name;
  @override
  @JsonKey(name: 'Updatetime')
  String get updateTime;
  @override
  @JsonKey(name: 'Createtime')
  String get createTime;
  @override
  @JsonKey(name: 'Categoryid')
  Categoryid? get categoryid;
  @override
  @JsonKey(name: 'Image')
  Image get image;
  @override
  @JsonKey(ignore: true)
  _$$ExerciseDtoImplCopyWith<_$ExerciseDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Image _$ImageFromJson(Map<String, dynamic> json) {
  return _Image.fromJson(json);
}

/// @nodoc
mixin _$Image {
  @JsonKey(name: 'String', defaultValue: "")
  String? get string => throw _privateConstructorUsedError;
  @JsonKey(name: 'Valid')
  bool get valid => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ImageCopyWith<Image> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ImageCopyWith<$Res> {
  factory $ImageCopyWith(Image value, $Res Function(Image) then) =
      _$ImageCopyWithImpl<$Res, Image>;
  @useResult
  $Res call(
      {@JsonKey(name: 'String', defaultValue: "") String? string,
      @JsonKey(name: 'Valid') bool valid});
}

/// @nodoc
class _$ImageCopyWithImpl<$Res, $Val extends Image>
    implements $ImageCopyWith<$Res> {
  _$ImageCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? string = freezed,
    Object? valid = null,
  }) {
    return _then(_value.copyWith(
      string: freezed == string
          ? _value.string
          : string // ignore: cast_nullable_to_non_nullable
              as String?,
      valid: null == valid
          ? _value.valid
          : valid // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ImageImplCopyWith<$Res> implements $ImageCopyWith<$Res> {
  factory _$$ImageImplCopyWith(
          _$ImageImpl value, $Res Function(_$ImageImpl) then) =
      __$$ImageImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'String', defaultValue: "") String? string,
      @JsonKey(name: 'Valid') bool valid});
}

/// @nodoc
class __$$ImageImplCopyWithImpl<$Res>
    extends _$ImageCopyWithImpl<$Res, _$ImageImpl>
    implements _$$ImageImplCopyWith<$Res> {
  __$$ImageImplCopyWithImpl(
      _$ImageImpl _value, $Res Function(_$ImageImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? string = freezed,
    Object? valid = null,
  }) {
    return _then(_$ImageImpl(
      string: freezed == string
          ? _value.string
          : string // ignore: cast_nullable_to_non_nullable
              as String?,
      valid: null == valid
          ? _value.valid
          : valid // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ImageImpl implements _Image {
  const _$ImageImpl(
      {@JsonKey(name: 'String', defaultValue: "") this.string,
      @JsonKey(name: 'Valid') required this.valid});

  factory _$ImageImpl.fromJson(Map<String, dynamic> json) =>
      _$$ImageImplFromJson(json);

  @override
  @JsonKey(name: 'String', defaultValue: "")
  final String? string;
  @override
  @JsonKey(name: 'Valid')
  final bool valid;

  @override
  String toString() {
    return 'Image(string: $string, valid: $valid)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ImageImpl &&
            (identical(other.string, string) || other.string == string) &&
            (identical(other.valid, valid) || other.valid == valid));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, string, valid);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ImageImplCopyWith<_$ImageImpl> get copyWith =>
      __$$ImageImplCopyWithImpl<_$ImageImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ImageImplToJson(
      this,
    );
  }
}

abstract class _Image implements Image {
  const factory _Image(
      {@JsonKey(name: 'String', defaultValue: "") final String? string,
      @JsonKey(name: 'Valid') required final bool valid}) = _$ImageImpl;

  factory _Image.fromJson(Map<String, dynamic> json) = _$ImageImpl.fromJson;

  @override
  @JsonKey(name: 'String', defaultValue: "")
  String? get string;
  @override
  @JsonKey(name: 'Valid')
  bool get valid;
  @override
  @JsonKey(ignore: true)
  _$$ImageImplCopyWith<_$ImageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Categoryid _$CategoryidFromJson(Map<String, dynamic> json) {
  return _Categoryid.fromJson(json);
}

/// @nodoc
mixin _$Categoryid {
  @JsonKey(name: 'Int32')
  int get int32 => throw _privateConstructorUsedError;
  @JsonKey(name: 'Valid')
  bool get valid => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CategoryidCopyWith<Categoryid> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CategoryidCopyWith<$Res> {
  factory $CategoryidCopyWith(
          Categoryid value, $Res Function(Categoryid) then) =
      _$CategoryidCopyWithImpl<$Res, Categoryid>;
  @useResult
  $Res call(
      {@JsonKey(name: 'Int32') int int32, @JsonKey(name: 'Valid') bool valid});
}

/// @nodoc
class _$CategoryidCopyWithImpl<$Res, $Val extends Categoryid>
    implements $CategoryidCopyWith<$Res> {
  _$CategoryidCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? int32 = null,
    Object? valid = null,
  }) {
    return _then(_value.copyWith(
      int32: null == int32
          ? _value.int32
          : int32 // ignore: cast_nullable_to_non_nullable
              as int,
      valid: null == valid
          ? _value.valid
          : valid // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CategoryidImplCopyWith<$Res>
    implements $CategoryidCopyWith<$Res> {
  factory _$$CategoryidImplCopyWith(
          _$CategoryidImpl value, $Res Function(_$CategoryidImpl) then) =
      __$$CategoryidImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'Int32') int int32, @JsonKey(name: 'Valid') bool valid});
}

/// @nodoc
class __$$CategoryidImplCopyWithImpl<$Res>
    extends _$CategoryidCopyWithImpl<$Res, _$CategoryidImpl>
    implements _$$CategoryidImplCopyWith<$Res> {
  __$$CategoryidImplCopyWithImpl(
      _$CategoryidImpl _value, $Res Function(_$CategoryidImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? int32 = null,
    Object? valid = null,
  }) {
    return _then(_$CategoryidImpl(
      int32: null == int32
          ? _value.int32
          : int32 // ignore: cast_nullable_to_non_nullable
              as int,
      valid: null == valid
          ? _value.valid
          : valid // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CategoryidImpl implements _Categoryid {
  const _$CategoryidImpl(
      {@JsonKey(name: 'Int32') required this.int32,
      @JsonKey(name: 'Valid') required this.valid});

  factory _$CategoryidImpl.fromJson(Map<String, dynamic> json) =>
      _$$CategoryidImplFromJson(json);

  @override
  @JsonKey(name: 'Int32')
  final int int32;
  @override
  @JsonKey(name: 'Valid')
  final bool valid;

  @override
  String toString() {
    return 'Categoryid(int32: $int32, valid: $valid)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CategoryidImpl &&
            (identical(other.int32, int32) || other.int32 == int32) &&
            (identical(other.valid, valid) || other.valid == valid));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, int32, valid);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CategoryidImplCopyWith<_$CategoryidImpl> get copyWith =>
      __$$CategoryidImplCopyWithImpl<_$CategoryidImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CategoryidImplToJson(
      this,
    );
  }
}

abstract class _Categoryid implements Categoryid {
  const factory _Categoryid(
      {@JsonKey(name: 'Int32') required final int int32,
      @JsonKey(name: 'Valid') required final bool valid}) = _$CategoryidImpl;

  factory _Categoryid.fromJson(Map<String, dynamic> json) =
      _$CategoryidImpl.fromJson;

  @override
  @JsonKey(name: 'Int32')
  int get int32;
  @override
  @JsonKey(name: 'Valid')
  bool get valid;
  @override
  @JsonKey(ignore: true)
  _$$CategoryidImplCopyWith<_$CategoryidImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
