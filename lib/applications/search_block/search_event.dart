part of 'search_bloc.dart';

@freezed
class SearchEvent with _$SearchEvent {
  const factory SearchEvent.searchlist()=_Searchlist;
  const factory SearchEvent.search({
    required String value
})=_Search;
}
