// ignore: depend_on_referenced_packages
import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
// ignore: depend_on_referenced_packages
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:netflix/domain/core/failure/downloadfailures.dart';

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
  }
}
