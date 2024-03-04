// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'failure_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

FailureModel _$FailureModelFromJson(Map<String, dynamic> json) {
  return _FailureModel.fromJson(json);
}

/// @nodoc
mixin _$FailureModel {
  String get message => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FailureModelCopyWith<FailureModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FailureModelCopyWith<$Res> {
  factory $FailureModelCopyWith(
          FailureModel value, $Res Function(FailureModel) then) =
      _$FailureModelCopyWithImpl<$Res, FailureModel>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class _$FailureModelCopyWithImpl<$Res, $Val extends FailureModel>
    implements $FailureModelCopyWith<$Res> {
  _$FailureModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_value.copyWith(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FailureModelImplCopyWith<$Res>
    implements $FailureModelCopyWith<$Res> {
  factory _$$FailureModelImplCopyWith(
          _$FailureModelImpl value, $Res Function(_$FailureModelImpl) then) =
      __$$FailureModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$FailureModelImplCopyWithImpl<$Res>
    extends _$FailureModelCopyWithImpl<$Res, _$FailureModelImpl>
    implements _$$FailureModelImplCopyWith<$Res> {
  __$$FailureModelImplCopyWithImpl(
      _$FailureModelImpl _value, $Res Function(_$FailureModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$FailureModelImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FailureModelImpl implements _FailureModel {
  const _$FailureModelImpl({required this.message});

  factory _$FailureModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$FailureModelImplFromJson(json);

  @override
  final String message;

  @override
  String toString() {
    return 'FailureModel(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FailureModelImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FailureModelImplCopyWith<_$FailureModelImpl> get copyWith =>
      __$$FailureModelImplCopyWithImpl<_$FailureModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FailureModelImplToJson(
      this,
    );
  }
}

abstract class _FailureModel implements FailureModel {
  const factory _FailureModel({required final String message}) =
      _$FailureModelImpl;

  factory _FailureModel.fromJson(Map<String, dynamic> json) =
      _$FailureModelImpl.fromJson;

  @override
  String get message;
  @override
  @JsonKey(ignore: true)
  _$$FailureModelImplCopyWith<_$FailureModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
