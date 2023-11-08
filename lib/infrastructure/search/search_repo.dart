import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';
import 'package:netflix/domain/core/api_end_points.dart';

import 'package:netflix/domain/core/failure/downloadfailures.dart';

import 'package:netflix/domain/downloads/models/downloads_main.dart';
import 'package:netflix/domain/search/models/searchResult.dart';

import '../../domain/downloads/i_download_repo_fazzard.dart';
import '../../domain/search/search_service.dart';

@LazySingleton(as: SearchRepo)
class SearchRepository implements SearchRepo {
  @override
  Future<Either<DownloadsFail, SearchResult>> getSeaerchList() async {
    try {
      if (kDebugMode) {
        print(ApiEndPoints.searchs);
      }
      final Response response =
      await Dio(BaseOptions()).get(ApiEndPoints.searchs);
      if (response.statusCode == 200 || response.statusCode == 201) {
        // final searchList = (response.data['results'] as List).map((e) {
        //   return Downloads.fromJson(e);
        // }).toList();

        // if (kDebugMode) {
        //   print(
        //       "sdfghj............................................../////////////////////////////////.${searchList}");
        // }

        return Right(SearchResult.fromJson(response.data));
      } else {
        return const Left(DownloadsFail.serverFailure());
      }
    } catch (e) {
      print(e.toString());
      return const Left(DownloadsFail.clientFailure());
    }
  }
}
