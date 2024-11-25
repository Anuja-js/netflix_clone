part of 'downloads_bloc.dart';

@freezed
abstract class Downloadstate with _$Downloadstate {
  // @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
  const factory Downloadstate({
    required Option<Either<DownloadsFail, List<Downloads>>>
        downloadsFailureOrSuccesOption,
    required bool isLoading,
    required bool ispageLoading,
    int? page,
    int? totalPages,
    List<Data>? modelScreen,
    List<Downloads>? downloads,
  }) = _Downloadstate;

  factory Downloadstate.initial() {
    return  const Downloadstate(
      isLoading: false,
      ispageLoading: false,
      downloadsFailureOrSuccesOption: None(),
      page: 0

    );
  }
}
