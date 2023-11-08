
import 'package:netflix/domain/downloads/models/downloads_main.dart';

import '../core/failure/downloadfailures.dart';
import 'package:dartz/dartz.dart';

import 'models/searchResult.dart';

abstract class SearchRepo{
  Future<Either<DownloadsFail,SearchResult>> getSeaerchList();

}