part of 'new_and_hot_bloc.dart';

@freezed
class NewAndHotState with _$NewAndHotState {
  const factory NewAndHotState({
    bool? isLoading,
    NeewAndHotData? neewAndHotData,


  }) = _NewAndHotState;

  factory NewAndHotState.initial() {
    return const NewAndHotState(
      isLoading: false,
    );
  }
}
