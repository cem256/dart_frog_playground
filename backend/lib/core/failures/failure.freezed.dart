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
    case 'userAlreadyRegisteredFailure':
      return _UserAlreadyRegisteredFailure.fromJson(json);
    case 'invalidCredentialsFailure':
      return _InvalidCredentialsFailure.fromJson(json);

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
    required TResult Function() userAlreadyRegisteredFailure,
    required TResult Function() invalidCredentialsFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function()? $default, {
    TResult? Function()? databaseConnectionFailure,
    TResult? Function()? dataInsertFailure,
    TResult? Function()? userAlreadyRegisteredFailure,
    TResult? Function()? invalidCredentialsFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function()? databaseConnectionFailure,
    TResult Function()? dataInsertFailure,
    TResult Function()? userAlreadyRegisteredFailure,
    TResult Function()? invalidCredentialsFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_Failure value) $default, {
    required TResult Function(_DatabaseConnectionFailure value)
        databaseConnectionFailure,
    required TResult Function(_DataInsertFailure value) dataInsertFailure,
    required TResult Function(_UserAlreadyRegisteredFailure value)
        userAlreadyRegisteredFailure,
    required TResult Function(_InvalidCredentialsFailure value)
        invalidCredentialsFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_Failure value)? $default, {
    TResult? Function(_DatabaseConnectionFailure value)?
        databaseConnectionFailure,
    TResult? Function(_DataInsertFailure value)? dataInsertFailure,
    TResult? Function(_UserAlreadyRegisteredFailure value)?
        userAlreadyRegisteredFailure,
    TResult? Function(_InvalidCredentialsFailure value)?
        invalidCredentialsFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_Failure value)? $default, {
    TResult Function(_DatabaseConnectionFailure value)?
        databaseConnectionFailure,
    TResult Function(_DataInsertFailure value)? dataInsertFailure,
    TResult Function(_UserAlreadyRegisteredFailure value)?
        userAlreadyRegisteredFailure,
    TResult Function(_InvalidCredentialsFailure value)?
        invalidCredentialsFailure,
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
    required TResult Function() userAlreadyRegisteredFailure,
    required TResult Function() invalidCredentialsFailure,
  }) {
    return $default();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function()? $default, {
    TResult? Function()? databaseConnectionFailure,
    TResult? Function()? dataInsertFailure,
    TResult? Function()? userAlreadyRegisteredFailure,
    TResult? Function()? invalidCredentialsFailure,
  }) {
    return $default?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function()? databaseConnectionFailure,
    TResult Function()? dataInsertFailure,
    TResult Function()? userAlreadyRegisteredFailure,
    TResult Function()? invalidCredentialsFailure,
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
    required TResult Function(_UserAlreadyRegisteredFailure value)
        userAlreadyRegisteredFailure,
    required TResult Function(_InvalidCredentialsFailure value)
        invalidCredentialsFailure,
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
    TResult? Function(_UserAlreadyRegisteredFailure value)?
        userAlreadyRegisteredFailure,
    TResult? Function(_InvalidCredentialsFailure value)?
        invalidCredentialsFailure,
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
    TResult Function(_UserAlreadyRegisteredFailure value)?
        userAlreadyRegisteredFailure,
    TResult Function(_InvalidCredentialsFailure value)?
        invalidCredentialsFailure,
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
    required TResult Function() userAlreadyRegisteredFailure,
    required TResult Function() invalidCredentialsFailure,
  }) {
    return databaseConnectionFailure();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function()? $default, {
    TResult? Function()? databaseConnectionFailure,
    TResult? Function()? dataInsertFailure,
    TResult? Function()? userAlreadyRegisteredFailure,
    TResult? Function()? invalidCredentialsFailure,
  }) {
    return databaseConnectionFailure?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function()? databaseConnectionFailure,
    TResult Function()? dataInsertFailure,
    TResult Function()? userAlreadyRegisteredFailure,
    TResult Function()? invalidCredentialsFailure,
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
    required TResult Function(_UserAlreadyRegisteredFailure value)
        userAlreadyRegisteredFailure,
    required TResult Function(_InvalidCredentialsFailure value)
        invalidCredentialsFailure,
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
    TResult? Function(_UserAlreadyRegisteredFailure value)?
        userAlreadyRegisteredFailure,
    TResult? Function(_InvalidCredentialsFailure value)?
        invalidCredentialsFailure,
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
    TResult Function(_UserAlreadyRegisteredFailure value)?
        userAlreadyRegisteredFailure,
    TResult Function(_InvalidCredentialsFailure value)?
        invalidCredentialsFailure,
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
    required TResult Function() userAlreadyRegisteredFailure,
    required TResult Function() invalidCredentialsFailure,
  }) {
    return dataInsertFailure();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function()? $default, {
    TResult? Function()? databaseConnectionFailure,
    TResult? Function()? dataInsertFailure,
    TResult? Function()? userAlreadyRegisteredFailure,
    TResult? Function()? invalidCredentialsFailure,
  }) {
    return dataInsertFailure?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function()? databaseConnectionFailure,
    TResult Function()? dataInsertFailure,
    TResult Function()? userAlreadyRegisteredFailure,
    TResult Function()? invalidCredentialsFailure,
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
    required TResult Function(_UserAlreadyRegisteredFailure value)
        userAlreadyRegisteredFailure,
    required TResult Function(_InvalidCredentialsFailure value)
        invalidCredentialsFailure,
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
    TResult? Function(_UserAlreadyRegisteredFailure value)?
        userAlreadyRegisteredFailure,
    TResult? Function(_InvalidCredentialsFailure value)?
        invalidCredentialsFailure,
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
    TResult Function(_UserAlreadyRegisteredFailure value)?
        userAlreadyRegisteredFailure,
    TResult Function(_InvalidCredentialsFailure value)?
        invalidCredentialsFailure,
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
abstract class _$$_UserAlreadyRegisteredFailureCopyWith<$Res> {
  factory _$$_UserAlreadyRegisteredFailureCopyWith(
          _$_UserAlreadyRegisteredFailure value,
          $Res Function(_$_UserAlreadyRegisteredFailure) then) =
      __$$_UserAlreadyRegisteredFailureCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_UserAlreadyRegisteredFailureCopyWithImpl<$Res>
    extends _$FailureCopyWithImpl<$Res, _$_UserAlreadyRegisteredFailure>
    implements _$$_UserAlreadyRegisteredFailureCopyWith<$Res> {
  __$$_UserAlreadyRegisteredFailureCopyWithImpl(
      _$_UserAlreadyRegisteredFailure _value,
      $Res Function(_$_UserAlreadyRegisteredFailure) _then)
      : super(_value, _then);
}

/// @nodoc
@JsonSerializable()
class _$_UserAlreadyRegisteredFailure implements _UserAlreadyRegisteredFailure {
  const _$_UserAlreadyRegisteredFailure({final String? $type})
      : $type = $type ?? 'userAlreadyRegisteredFailure';

  factory _$_UserAlreadyRegisteredFailure.fromJson(Map<String, dynamic> json) =>
      _$$_UserAlreadyRegisteredFailureFromJson(json);

  @JsonKey(name: 'failureType')
  final String $type;

  @override
  String toString() {
    return 'Failure.userAlreadyRegisteredFailure()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UserAlreadyRegisteredFailure);
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
    required TResult Function() userAlreadyRegisteredFailure,
    required TResult Function() invalidCredentialsFailure,
  }) {
    return userAlreadyRegisteredFailure();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function()? $default, {
    TResult? Function()? databaseConnectionFailure,
    TResult? Function()? dataInsertFailure,
    TResult? Function()? userAlreadyRegisteredFailure,
    TResult? Function()? invalidCredentialsFailure,
  }) {
    return userAlreadyRegisteredFailure?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function()? databaseConnectionFailure,
    TResult Function()? dataInsertFailure,
    TResult Function()? userAlreadyRegisteredFailure,
    TResult Function()? invalidCredentialsFailure,
    required TResult orElse(),
  }) {
    if (userAlreadyRegisteredFailure != null) {
      return userAlreadyRegisteredFailure();
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
    required TResult Function(_UserAlreadyRegisteredFailure value)
        userAlreadyRegisteredFailure,
    required TResult Function(_InvalidCredentialsFailure value)
        invalidCredentialsFailure,
  }) {
    return userAlreadyRegisteredFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_Failure value)? $default, {
    TResult? Function(_DatabaseConnectionFailure value)?
        databaseConnectionFailure,
    TResult? Function(_DataInsertFailure value)? dataInsertFailure,
    TResult? Function(_UserAlreadyRegisteredFailure value)?
        userAlreadyRegisteredFailure,
    TResult? Function(_InvalidCredentialsFailure value)?
        invalidCredentialsFailure,
  }) {
    return userAlreadyRegisteredFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_Failure value)? $default, {
    TResult Function(_DatabaseConnectionFailure value)?
        databaseConnectionFailure,
    TResult Function(_DataInsertFailure value)? dataInsertFailure,
    TResult Function(_UserAlreadyRegisteredFailure value)?
        userAlreadyRegisteredFailure,
    TResult Function(_InvalidCredentialsFailure value)?
        invalidCredentialsFailure,
    required TResult orElse(),
  }) {
    if (userAlreadyRegisteredFailure != null) {
      return userAlreadyRegisteredFailure(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$_UserAlreadyRegisteredFailureToJson(
      this,
    );
  }
}

abstract class _UserAlreadyRegisteredFailure implements Failure {
  const factory _UserAlreadyRegisteredFailure() =
      _$_UserAlreadyRegisteredFailure;

  factory _UserAlreadyRegisteredFailure.fromJson(Map<String, dynamic> json) =
      _$_UserAlreadyRegisteredFailure.fromJson;
}

/// @nodoc
abstract class _$$_InvalidCredentialsFailureCopyWith<$Res> {
  factory _$$_InvalidCredentialsFailureCopyWith(
          _$_InvalidCredentialsFailure value,
          $Res Function(_$_InvalidCredentialsFailure) then) =
      __$$_InvalidCredentialsFailureCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_InvalidCredentialsFailureCopyWithImpl<$Res>
    extends _$FailureCopyWithImpl<$Res, _$_InvalidCredentialsFailure>
    implements _$$_InvalidCredentialsFailureCopyWith<$Res> {
  __$$_InvalidCredentialsFailureCopyWithImpl(
      _$_InvalidCredentialsFailure _value,
      $Res Function(_$_InvalidCredentialsFailure) _then)
      : super(_value, _then);
}

/// @nodoc
@JsonSerializable()
class _$_InvalidCredentialsFailure implements _InvalidCredentialsFailure {
  const _$_InvalidCredentialsFailure({final String? $type})
      : $type = $type ?? 'invalidCredentialsFailure';

  factory _$_InvalidCredentialsFailure.fromJson(Map<String, dynamic> json) =>
      _$$_InvalidCredentialsFailureFromJson(json);

  @JsonKey(name: 'failureType')
  final String $type;

  @override
  String toString() {
    return 'Failure.invalidCredentialsFailure()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_InvalidCredentialsFailure);
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
    required TResult Function() userAlreadyRegisteredFailure,
    required TResult Function() invalidCredentialsFailure,
  }) {
    return invalidCredentialsFailure();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function()? $default, {
    TResult? Function()? databaseConnectionFailure,
    TResult? Function()? dataInsertFailure,
    TResult? Function()? userAlreadyRegisteredFailure,
    TResult? Function()? invalidCredentialsFailure,
  }) {
    return invalidCredentialsFailure?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function()? databaseConnectionFailure,
    TResult Function()? dataInsertFailure,
    TResult Function()? userAlreadyRegisteredFailure,
    TResult Function()? invalidCredentialsFailure,
    required TResult orElse(),
  }) {
    if (invalidCredentialsFailure != null) {
      return invalidCredentialsFailure();
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
    required TResult Function(_UserAlreadyRegisteredFailure value)
        userAlreadyRegisteredFailure,
    required TResult Function(_InvalidCredentialsFailure value)
        invalidCredentialsFailure,
  }) {
    return invalidCredentialsFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_Failure value)? $default, {
    TResult? Function(_DatabaseConnectionFailure value)?
        databaseConnectionFailure,
    TResult? Function(_DataInsertFailure value)? dataInsertFailure,
    TResult? Function(_UserAlreadyRegisteredFailure value)?
        userAlreadyRegisteredFailure,
    TResult? Function(_InvalidCredentialsFailure value)?
        invalidCredentialsFailure,
  }) {
    return invalidCredentialsFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_Failure value)? $default, {
    TResult Function(_DatabaseConnectionFailure value)?
        databaseConnectionFailure,
    TResult Function(_DataInsertFailure value)? dataInsertFailure,
    TResult Function(_UserAlreadyRegisteredFailure value)?
        userAlreadyRegisteredFailure,
    TResult Function(_InvalidCredentialsFailure value)?
        invalidCredentialsFailure,
    required TResult orElse(),
  }) {
    if (invalidCredentialsFailure != null) {
      return invalidCredentialsFailure(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$_InvalidCredentialsFailureToJson(
      this,
    );
  }
}

abstract class _InvalidCredentialsFailure implements Failure {
  const factory _InvalidCredentialsFailure() = _$_InvalidCredentialsFailure;

  factory _InvalidCredentialsFailure.fromJson(Map<String, dynamic> json) =
      _$_InvalidCredentialsFailure.fromJson;
}
