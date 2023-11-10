import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:netflix/domain/fast_laughs/models/ProfilePic.dart';
import 'package:netflix/domain/fast_laughs/vedio_result.dart';

import '../../domain/core/failure/downloadfailures.dart';
import '../../domain/fast_laughs/models/VediosData.dart';

part 'fast_laughs_event.dart';
part 'fast_laughs_state.dart';
part 'fast_laughs_bloc.freezed.dart';

@injectable
class FastLaughsBloc extends Bloc<FastLaughsEvent, FastLaughsState> {
  final FastRepo _fastLaughRepo;
  FastLaughsBloc(this._fastLaughRepo) : super(FastLaughsState.initial()) {
    on<_GetprofileImages>((event, emit) async {
      emit(state.copyWith(isLoading: true));

      final Either<DownloadsFail, ProfilePic?> result =
          await _fastLaughRepo.getprofileList();
      print('=====================$result');
      emit(result.fold((l) => state.copyWith(isLoading: false, profilePic: null),
          (r) {
        print("object====${r?.toJson()}");
        return state.copyWith(
          isLoading: false,
          profilePic: r,
        );
      }));
    });
    on<_GetVedios>((event, emit) async{
      emit(state.copyWith(isLoading: true));
      final Either<DownloadsFail,VediosData?> output= await _fastLaughRepo.getvedioList();
      emit(output.fold((l) => state.copyWith(isLoading: false, vediosData: null),
              (r) {
            print("object====${r?.toJson()}");
            return state.copyWith(
              isLoading: false,
              vediosData: r,
            );
          }));
    });

  }
}
