// ignore: depend_on_referenced_packages
import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
// ignore: depend_on_referenced_packages
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:netflix/domain/core/failure/downloadfailures.dart';
import 'package:netflix/domain/downloads/models/ModelScreen.dart';

import '../../domain/downloads/i_download_repo_fazzard.dart';
import '../../domain/downloads/models/downloads_main.dart';

part 'downloads_event.dart';
part 'downloads_state.dart';

part 'downloads_bloc.freezed.dart';

@injectable
class DownloadsBloc extends Bloc<DownloadsEvent, Downloadstate> {
  final IdownloadRepo _idownloadRepo;
  DownloadsBloc(this._idownloadRepo) : super(Downloadstate.initial()) {
    on<_GetDownloadImages>((event, emit) async {
      emit(state.copyWith(
          isLoading: true, downloadsFailureOrSuccesOption: none()));

      final Either<DownloadsFail, List<Downloads>> downloadsOption =
          await _idownloadRepo.getDownloadImages();

      // print(object)

      emit(downloadsOption.fold(
          (fail) => state.copyWith(
              isLoading: false,
              downloadsFailureOrSuccesOption: some(Left(fail))),
          // ignore: non_constant_identifier_names
          (Succes) => state.copyWith(
              isLoading: false,
              downloads: Succes,
              downloadsFailureOrSuccesOption: some(Right(Succes)))));
    });
    on<_GetscreenImages>((event, emit) async {
      emit(state.copyWith(
          isLoading: state.page == 0 ? true : false,
          ispageLoading: state.page == 0 && state.page == 2? false : true,
          page: (state.page! + 1)));
      print(
          "page==================================================${state.page}");
      final Either<DownloadsFail, ModelScreen> datas =
          await _idownloadRepo.getscreenImages(page: state.page!);
      emit(datas.fold(
          (fail) => state.copyWith(
              isLoading: false, ispageLoading: false, modelScreen: null),
          // ignore: non_constant_identifier_names
          (Succes) {
        if (state.page == 1) {
          return state.copyWith(
              isLoading: false,
              ispageLoading: false,
              modelScreen: Succes.data,
              page: int.parse(Succes.page.toString()),
              totalPages: int.parse(Succes.totalPages.toString()));
        } else {
          return state.copyWith(
              isLoading: false,
              ispageLoading: false,
              modelScreen: List.from(state.modelScreen as Iterable)
                ..addAll(Succes.data as Iterable<Data>),
              page: (int.parse(Succes.page.toString())),
              totalPages: int.parse(Succes.totalPages.toString()));
        }
      }));
    });
  }
}
