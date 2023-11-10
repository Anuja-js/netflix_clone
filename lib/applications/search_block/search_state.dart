part of 'search_bloc.dart';

@freezed
class SearchState with _$SearchState {
  const factory SearchState({
    bool? isLoading,
    bool? isSearch,
    SearchResult? searchResult,
  }) = _SearchState;

  factory SearchState.initial() {
    return SearchState(isLoading: false, isSearch: false);
  }
}
