part of 'search_bloc.dart';

@freezed
class SearchState with _$SearchState {
  const factory SearchState({
     bool? isLoading,
    SearchResult? searchResult,
    String? search,
})=_SearchState;

  factory SearchState.initial(){
    return SearchState(isLoading: false);
  }
}


