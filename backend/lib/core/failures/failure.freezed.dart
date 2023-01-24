// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Failure _$FailureFromJson(Map<String, dynamic> json) {
  switch (json['failureType']) {
    case 'default':
      return _Failure.fromJson(json);
    case 'databaseConnectionFailure':
      return _DatabaseConnectionFailure.fromJson(json);
    case 'dataInsertFailure':
      return _DataInsertFailure.fromJson(json);
    case 'userAlreadyExistsFailure':
      return _UserAlreadyExistsFailure.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'failureType', 'Failure',
          'Invalid union type "${json['failureType']}"!');
  }
}

/// @nodoc
mixin _$Failure {
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function() databaseConnectionFailure,
    required TResult Function() dataInsertFailure,
    required TResult Function() userAlreadyExistsFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function()? $default, {
    TResult? Function()? databaseConnectionFailure,
    TResult? Function()? dataInsertFailure,
    TResult? Function()? userAlreadyExistsFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function()? databaseConnectionFailure,
    TResult Function()? dataInsertFailure,
    TResult Function()? userAlreadyExistsFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_Failure value) $default, {
    required TResult Function(_DatabaseConnectionFailure value)
        databaseConnectionFailure,
    required TResult Function(_DataInsertFailure value) dataInsertFailure,
    required TResult Function(_UserAlreadyExistsFailure value)
        userAlreadyExistsFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_Failure value)? $default, {
    TResult? Function(_DatabaseConnectionFailure value)?
        databaseConnectionFailure,
    TResult? Function(_DataInsertFailure value)? dataInsertFailure,
    TResult? Function(_UserAlreadyExistsFailure value)?
        userAlreadyExistsFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_Failure value)? $default, {
    TResult Function(_DatabaseConnectionFailure value)?
        databaseConnectionFailure,
    TResult Function(_DataInsertFailure value)? dataInsertFailure,
    TResult Function(_UserAlreadyExistsFailure value)? userAlreadyExistsFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FailureCopyWith<$Res> {
  factory $FailureCopyWith(Failure value, $Res Function(Failure) then) =
      _$FailureCopyWithImpl<$Res, Failure>;
}

/// @nodoc
class _$FailureCopyWithImpl<$Res, $Val extends Failure>
    implements $FailureCopyWith<$Res> {
  _$FailureCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_FailureCopyWith<$Res> {
  factory _$$_FailureCopyWith(
          _$_Failure value, $Res Function(_$_Failure) then) =
      __$$_FailureCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_FailureCopyWithImpl<$Res>
    extends _$FailureCopyWithImpl<$Res, _$_Failure>
    implements _$$_FailureCopyWith<$Res> {
  __$$_FailureCopyWithImpl(_$_Failure _value, $Res Function(_$_Failure) _then)
      : super(_value, _then);
}

/// @nodoc
@JsonSerializable()
class _$_Failure implements _Failure {
  const _$_Failure({final String? $type}) : $type = $type ?? 'default';

  factory _$_Failure.fromJson(Map<String, dynamic> json) =>
      _$$_FailureFromJson(json);

  @JsonKey(name: 'failureType')
  final String $type;

  @override
  String toString() {
    return 'Failure()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Failure);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function() databaseConnectionFailure,
    required TResult Function() dataInsertFailure,
    required TResult Function() userAlreadyExistsFailure,
  }) {
    return $default();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function()? $default, {
    TResult? Function()? databaseConnectionFailure,
    TResult? Function()? dataInsertFailure,
    TResult? Function()? userAlreadyExistsFailure,
  }) {
    return $default?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function()? databaseConnectionFailure,
    TResult Function()? dataInsertFailure,
    TResult Function()? userAlreadyExistsFailure,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_Failure value) $default, {
    required TResult Function(_DatabaseConnectionFailure value)
        databaseConnectionFailure,
    required TResult Function(_DataInsertFailure value) dataInsertFailure,
    required TResult Function(_UserAlreadyExistsFailure value)
        userAlreadyExistsFailure,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_Failure value)? $default, {
    TResult? Function(_DatabaseConnectionFailure value)?
        databaseConnectionFailure,
    TResult? Function(_DataInsertFailure value)? dataInsertFailure,
    TResult? Function(_UserAlreadyExistsFailure value)?
        userAlreadyExistsFailure,
  }) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_Failure value)? $default, {
    TResult Function(_DatabaseConnectionFailure value)?
        databaseConnectionFailure,
    TResult Function(_DataInsertFailure value)? dataInsertFailure,
    TResult Function(_UserAlreadyExistsFailure value)? userAlreadyExistsFailure,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$_FailureToJson(
      this,
    );
  }
}

abstract class _Failure implements Failure {
  const factory _Failure() = _$_Failure;

  factory _Failure.fromJson(Map<String, dynamic> json) = _$_Failure.fromJson;
}

/// @nodoc
abstract class _$$_DatabaseConnectionFailureCopyWith<$Res> {
  factory _$$_DatabaseConnectionFailureCopyWith(
          _$_DatabaseConnectionFailure value,
          $Res Function(_$_DatabaseConnectionFailure) then) =
      __$$_DatabaseConnectionFailureCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_DatabaseConnectionFailureCopyWithImpl<$Res>
    extends _$FailureCopyWithImpl<$Res, _$_DatabaseConnectionFailure>
    implements _$$_DatabaseConnectionFailureCopyWith<$Res> {
  __$$_DatabaseConnectionFailureCopyWithImpl(
      _$_DatabaseConnectionFailure _value,
      $Res Function(_$_DatabaseConnectionFailure) _then)
      : super(_value, _then);
}

/// @nodoc
@JsonSerializable()
class _$_DatabaseConnectionFailure implements _DatabaseConnectionFailure {
  const _$_DatabaseConnectionFailure({final String? $type})
      : $type = $type ?? 'databaseConnectionFailure';

  factory _$_DatabaseConnectionFailure.fromJson(Map<String, dynamic> json) =>
      _$$_DatabaseConnectionFailureFromJson(json);

  @JsonKey(name: 'failureType')
  final String $type;

  @override
  String toString() {
    return 'Failure.databaseConnectionFailure()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DatabaseConnectionFailure);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function() databaseConnectionFailure,
    required TResult Function() dataInsertFailure,
    required TResult Function() userAlreadyExistsFailure,
  }) {
    return databaseConnectionFailure();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function()? $default, {
    TResult? Function()? databaseConnectionFailure,
    TResult? Function()? dataInsertFailure,
    TResult? Function()? userAlreadyExistsFailure,
  }) {
    return databaseConnectionFailure?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function()? databaseConnectionFailure,
    TResult Function()? dataInsertFailure,
    TResult Function()? userAlreadyExistsFailure,
    required TResult orElse(),
  }) {
    if (databaseConnectionFailure != null) {
      return databaseConnectionFailure();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_Failure value) $default, {
    required TResult Function(_DatabaseConnectionFailure value)
        databaseConnectionFailure,
    required TResult Function(_DataInsertFailure value) dataInsertFailure,
    required TResult Function(_UserAlreadyExistsFailure value)
        userAlreadyExistsFailure,
  }) {
    return databaseConnectionFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_Failure value)? $default, {
    TResult? Function(_DatabaseConnectionFailure value)?
        databaseConnectionFailure,
    TResult? Function(_DataInsertFailure value)? dataInsertFailure,
    TResult? Function(_UserAlreadyExistsFailure value)?
        userAlreadyExistsFailure,
  }) {
    return databaseConnectionFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_Failure value)? $default, {
    TResult Function(_DatabaseConnectionFailure value)?
        databaseConnectionFailure,
    TResult Function(_DataInsertFailure value)? dataInsertFailure,
    TResult Function(_UserAlreadyExistsFailure value)? userAlreadyExistsFailure,
    required TResult orElse(),
  }) {
    if (databaseConnectionFailure != null) {
      return databaseConnectionFailure(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$_DatabaseConnectionFailureToJson(
      this,
    );
  }
}

abstract class _DatabaseConnectionFailure implements Failure {
  const factory _DatabaseConnectionFailure() = _$_DatabaseConnectionFailure;

  factory _DatabaseConnectionFailure.fromJson(Map<String, dynamic> json) =
      _$_DatabaseConnectionFailure.fromJson;
}

/// @nodoc
abstract class _$$_DataInsertFailureCopyWith<$Res> {
  factory _$$_DataInsertFailureCopyWith(_$_DataInsertFailure value,
          $Res Function(_$_DataInsertFailure) then) =
      __$$_DataInsertFailureCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_DataInsertFailureCopyWithImpl<$Res>
    extends _$FailureCopyWithImpl<$Res, _$_DataInsertFailure>
    implements _$$_DataInsertFailureCopyWith<$Res> {
  __$$_DataInsertFailureCopyWithImpl(
      _$_DataInsertFailure _value, $Res Function(_$_DataInsertFailure) _then)
      : super(_value, _then);
}

/// @nodoc
@JsonSerializable()
class _$_DataInsertFailure implements _DataInsertFailure {
  const _$_DataInsertFailure({final String? $type})
      : $type = $type ?? 'dataInsertFailure';

  factory _$_DataInsertFailure.fromJson(Map<String, dynamic> json) =>
      _$$_DataInsertFailureFromJson(json);

  @JsonKey(name: 'failureType')
  final String $type;

  @override
  String toString() {
    return 'Failure.dataInsertFailure()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_DataInsertFailure);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function() databaseConnectionFailure,
    required TResult Function() dataInsertFailure,
    required TResult Function() userAlreadyExistsFailure,
  }) {
    return dataInsertFailure();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function()? $default, {
    TResult? Function()? databaseConnectionFailure,
    TResult? Function()? dataInsertFailure,
    TResult? Function()? userAlreadyExistsFailure,
  }) {
    return dataInsertFailure?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function()? databaseConnectionFailure,
    TResult Function()? dataInsertFailure,
    TResult Function()? userAlreadyExistsFailure,
    required TResult orElse(),
  }) {
    if (dataInsertFailure != null) {
      return dataInsertFailure();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_Failure value) $default, {
    required TResult Function(_DatabaseConnectionFailure value)
        databaseConnectionFailure,
    required TResult Function(_DataInsertFailure value) dataInsertFailure,
    required TResult Function(_UserAlreadyExistsFailure value)
        userAlreadyExistsFailure,
  }) {
    return dataInsertFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_Failure value)? $default, {
    TResult? Function(_DatabaseConnectionFailure value)?
        databaseConnectionFailure,
    TResult? Function(_DataInsertFailure value)? dataInsertFailure,
    TResult? Function(_UserAlreadyExistsFailure value)?
        userAlreadyExistsFailure,
  }) {
    return dataInsertFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_Failure value)? $default, {
    TResult Function(_DatabaseConnectionFailure value)?
        databaseConnectionFailure,
    TResult Function(_DataInsertFailure value)? dataInsertFailure,
    TResult Function(_UserAlreadyExistsFailure value)? userAlreadyExistsFailure,
    required TResult orElse(),
  }) {
    if (dataInsertFailure != null) {
      return dataInsertFailure(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$_DataInsertFailureToJson(
      this,
    );
  }
}

abstract class _DataInsertFailure implements Failure {
  const factory _DataInsertFailure() = _$_DataInsertFailure;

  factory _DataInsertFailure.fromJson(Map<String, dynamic> json) =
      _$_DataInsertFailure.fromJson;
}

/// @nodoc
abstract class _$$_UserAlreadyExistsFailureCopyWith<$Res> {
  factory _$$_UserAlreadyExistsFailureCopyWith(
          _$_UserAlreadyExistsFailure value,
          $Res Function(_$_UserAlreadyExistsFailure) then) =
      __$$_UserAlreadyExistsFailureCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_UserAlreadyExistsFailureCopyWithImpl<$Res>
    extends _$FailureCopyWithImpl<$Res, _$_UserAlreadyExistsFailure>
    implements _$$_UserAlreadyExistsFailureCopyWith<$Res> {
  __$$_UserAlreadyExistsFailureCopyWithImpl(_$_UserAlreadyExistsFailure _value,
      $Res Function(_$_UserAlreadyExistsFailure) _then)
      : super(_value, _then);
}

/// @nodoc
@JsonSerializable()
class _$_UserAlreadyExistsFailure implements _UserAlreadyExistsFailure {
  const _$_UserAlreadyExistsFailure({final String? $type})
      : $type = $type ?? 'userAlreadyExistsFailure';

  factory _$_UserAlreadyExistsFailure.fromJson(Map<String, dynamic> json) =>
      _$$_UserAlreadyExistsFailureFromJson(json);

  @JsonKey(name: 'failureType')
  final String $type;

  @override
  String toString() {
    return 'Failure.userAlreadyExistsFailure()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UserAlreadyExistsFailure);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function() databaseConnectionFailure,
    required TResult Function() dataInsertFailure,
    required TResult Function() userAlreadyExistsFailure,
  }) {
    return userAlreadyExistsFailure();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function()? $default, {
    TResult? Function()? databaseConnectionFailure,
    TResult? Function()? dataInsertFailure,
    TResult? Function()? userAlreadyExistsFailure,
  }) {
    return userAlreadyExistsFailure?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function()? databaseConnectionFailure,
    TResult Function()? dataInsertFailure,
    TResult Function()? userAlreadyExistsFailure,
    required TResult orElse(),
  }) {
    if (userAlreadyExistsFailure != null) {
      return userAlreadyExistsFailure();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_Failure value) $default, {
    required TResult Function(_DatabaseConnectionFailure value)
        databaseConnectionFailure,
    required TResult Function(_DataInsertFailure value) dataInsertFailure,
    required TResult Function(_UserAlreadyExistsFailure value)
        userAlreadyExistsFailure,
  }) {
    return userAlreadyExistsFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_Failure value)? $default, {
    TResult? Function(_DatabaseConnectionFailure value)?
        databaseConnectionFailure,
    TResult? Function(_DataInsertFailure value)? dataInsertFailure,
    TResult? Function(_UserAlreadyExistsFailure value)?
        userAlreadyExistsFailure,
  }) {
    return userAlreadyExistsFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_Failure value)? $default, {
    TResult Function(_DatabaseConnectionFailure value)?
        databaseConnectionFailure,
    TResult Function(_DataInsertFailure value)? dataInsertFailure,
    TResult Function(_UserAlreadyExistsFailure value)? userAlreadyExistsFailure,
    required TResult orElse(),
  }) {
    if (userAlreadyExistsFailure != null) {
      return userAlreadyExistsFailure(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$_UserAlreadyExistsFailureToJson(
      this,
    );
  }
}

abstract class _UserAlreadyExistsFailure implements Failure {
  const factory _UserAlreadyExistsFailure() = _$_UserAlreadyExistsFailure;

  factory _UserAlreadyExistsFailure.fromJson(Map<String, dynamic> json) =
      _$_UserAlreadyExistsFailure.fromJson;
}
