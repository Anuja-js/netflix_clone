import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../domain/core/failure/downloadfailures.dart';
import '../../domain/search/models/searchResult.dart';
import '../../domain/search/search_service.dart';

part 'search_event.dart';
part 'search_state.dart';
part 'search_bloc.freezed.dart';

@injectable
class SearchBloc extends Bloc<SearchEvent, SearchState> {
  final SearchRepo _searchRepo;
  SearchBloc(this._searchRepo) : super(SearchState.initial()) {
    on<_Searchlist>((event, emit) async {
      emit(state.copyWith(isLoading: true));

      final Either<DownloadsFail, SearchResult?> result =
          await _searchRepo.getSeaerchList();
      print('=====================$result');
      emit(result.fold(
          (l) => state.copyWith(isLoading: true, searchResult: null), (r) {
        print("object====${r?.toJson()}");
        return state.copyWith(
            isLoading: false, searchResult: r, isSearch: false);
      }));
    });

    on<_Search>((event, emit) async {
      emit(state.copyWith(isLoading: true));
      final Either<DownloadsFail, SearchResult?> result =
          await _searchRepo.getSeaerchList(key: event.query);
      print('=====================$result');
      emit(result.fold(
          (l) => state.copyWith(isLoading: true, searchResult: null), (r) {
        print("object====${r?.toJson()}");
        return state.copyWith(
            isLoading: false, searchResult: r, isSearch: true);
      }));
    });
  }
}
