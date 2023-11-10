import 'package:netflix/domain/fast_laughs/models/VediosData.dart';

import '../core/failure/downloadfailures.dart';
import 'package:dartz/dartz.dart';

import 'models/ProfilePic.dart';

abstract class FastRepo{
  Future<Either<DownloadsFail,ProfilePic>> getprofileList({String? key});
  Future<Either<DownloadsFail,VediosData>> getvedioList({String? key});

}