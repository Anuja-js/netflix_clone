// ignore_for_file: depend_on_referenced_packages

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
 // // ignore: depend_on_referenced_packages
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:netflix/domain/NewAndHot/NeewAndHotData.dart';
import '../../domain/NewAndHot/sevice_newAndHot.dart';
import '../../domain/core/failure/downloadfailures.dart';
part 'new_and_hot_event.dart';
part 'new_and_hot_state.dart';
part 'new_and_hot_bloc.freezed.dart';
@injectable
class NewAndHotBloc extends Bloc<NewAndHotEvent, NewAndHotState> {
  final NewRepo _newAndHotRepo;
  NewAndHotBloc(this._newAndHotRepo) : super(NewAndHotState.initial()) {
    on<_GetCommingsoonList>((event, emit) async {
      emit(state.copyWith(isLoading: true));

      final Either<DownloadsFail, NeewAndHotData?> result =
          await _newAndHotRepo.getCommingsoonList();
      print('=====================$result');
      emit(result.fold(
          (l) => state.copyWith(isLoading: false, neewAndHotData: null), (r) {
        print("object====${r?.toJson()}");
        return state.copyWith(
          isLoading: false,
          neewAndHotData: r,
        );
      }));
    });
    on<_GetEveryoneList>((event, emit) async {
      emit(state.copyWith(isLoading: true));
      final Either<DownloadsFail, NeewAndHotData?> output =
          await _newAndHotRepo.getEveryoneList();
      emit(output.fold(
          (l) => state.copyWith(isLoading: false, neewAndHotData: null), (r) {
        print("object====${r?.toJson()}");
        return state.copyWith(
          isLoading: false,
          neewAndHotData: r,
        );
      }));
    });

  }
}
