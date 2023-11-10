part of 'fast_laughs_bloc.dart';

@freezed
class FastLaughsState with _$FastLaughsState {
  const factory FastLaughsState({
    bool? isLoading,
    ProfilePic? profilePic,
    VediosData?vediosData,
  }) = _FastLaughsState;

  factory FastLaughsState.initial() {
    return const FastLaughsState(
      isLoading: false,
    );
  }
}
