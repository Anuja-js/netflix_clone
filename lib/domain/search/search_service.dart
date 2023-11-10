import '../core/failure/downloadfailures.dart';
import 'package:dartz/dartz.dart';

import 'models/searchResult.dart';

abstract class SearchRepo{
  Future<Either<DownloadsFail,SearchResult>> getSeaerchList({String? key});


}