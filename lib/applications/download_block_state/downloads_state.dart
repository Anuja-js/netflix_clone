part of 'downloads_bloc.dart';

@freezed
abstract class Downloadstate with _$Downloadstate {
  // @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
  const factory Downloadstate({
    required Option<Either<DownloadsFail, List<Downloads>>>
        downloadsFailureOrSuccesOption,
    required bool isLoading,
     List<Downloads>? downloads,
  }) = _Downloadstate;

  factory Downloadstate.initial() {
    return  Downloadstate(
      isLoading: false,
      downloadsFailureOrSuccesOption: None(),

    );
  }
}
