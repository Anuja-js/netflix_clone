part of 'downloads_bloc.dart';


@freezed
abstract class DownloadsEvent with _$DownloadsEvent{
  // @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
  const factory DownloadsEvent.getDownloadImages() = _GetDownloadImages;




}
