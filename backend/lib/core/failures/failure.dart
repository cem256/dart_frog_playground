import 'package:freezed_annotation/freezed_annotation.dart';

part 'failure.freezed.dart';
part 'failure.g.dart';

@Freezed(unionKey: 'failureType')
class Failure with _$Failure {
  const factory Failure() = _Failure;
  const factory Failure.databaseConnectionFailure() = _DatabaseConnectionFailure;
  const factory Failure.dataInsertFailure() = _DataInsertFailure;
  const factory Failure.userAlreadyRegisteredFailure() = _UserAlreadyRegisteredFailure;
  const factory Failure.invalidCredentialsFailure() = _InvalidCredentialsFailure;

  factory Failure.fromJson(Map<String, dynamic> json) => _$FailureFromJson(json);
}
