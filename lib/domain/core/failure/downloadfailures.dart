
import 'package:freezed_annotation/freezed_annotation.dart';

part 'downloadfailures.freezed.dart';
// part 'downloadfailures.g.dart';

@freezed
abstract class DownloadsFail with _$DownloadsFail {
  // @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
  const factory DownloadsFail.clientFailure ()= _ClientFailure;
const factory DownloadsFail.serverFailure() = _ServerFailure;


}