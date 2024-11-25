
import 'package:netflix/domain/downloads/models/ModelScreen.dart';
import 'package:netflix/domain/downloads/models/downloads_main.dart';

import '../core/failure/downloadfailures.dart';
import 'package:dartz/dartz.dart';

abstract class IdownloadRepo{
Future<Either<DownloadsFail,List<Downloads>>> getDownloadImages();
Future<Either<DownloadsFail,ModelScreen>> getscreenImages({
  required int page
});
}