part of 'new_and_hot_bloc.dart';

@freezed
class NewAndHotEvent with _$NewAndHotEvent {
  const factory NewAndHotEvent.getCommingsoonList()=_GetCommingsoonList;
  const factory NewAndHotEvent.getEveryoneList()=_GetEveryoneList;
  const factory NewAndHotEvent.loadMore() = _LoadMore;


}
