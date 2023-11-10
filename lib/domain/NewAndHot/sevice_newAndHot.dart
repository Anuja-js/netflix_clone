import 'package:netflix/domain/NewAndHot/NeewAndHotData.dart';

import '../core/failure/downloadfailures.dart';
import 'package:dartz/dartz.dart';
// import 'models/NeewAndHotData.dart';

abstract class NewRepo{
  Future<Either<DownloadsFail,NeewAndHotData>> getCommingsoonList({String? key});
  Future<Either<DownloadsFail,NeewAndHotData>> getEveryoneList({String? key});


}