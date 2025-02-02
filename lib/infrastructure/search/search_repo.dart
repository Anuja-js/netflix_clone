import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';
import 'package:netflix/domain/core/api_end_points.dart';
import 'package:netflix/domain/core/failure/downloadfailures.dart';
import 'package:netflix/domain/search/models/searchResult.dart';
import '../../core/strings.dart';
import '../../domain/search/search_service.dart';
import '../api_key.dart';

@LazySingleton(as: SearchRepo)
class SearchRepository implements SearchRepo {
  @override
  Future<Either<DownloadsFail, SearchResult>> getSeaerchList(
      {String? key}) async {
    try {
      if (kDebugMode) {
        print(ApiEndPoints.searchs);
      }
      if (kDebugMode) {
        print("**!!**!!**!!**!!**!!$key");
      }
      if (kDebugMode) {
        print(
            "$baseUrl/search/movie?api_key=$apiKey&query=${key ?? "spiderman"}");
      }
      final Response response =
          await Dio(BaseOptions()).get(ApiEndPoints.searchs);
      if (response.statusCode == 200 || response.statusCode == 201) {
        // final searchList = (response.data['results'] as List).map((e) {
        //   return Downloads.fromJson(e);
        // }).toList();

        if (kDebugMode) {
          print(
              "**..**..**..**..**..**..**..**..**..**..**..**..**${response.data}");
        }

        return Right(SearchResult.fromJson(response.data));
      } else {
        return const Left(DownloadsFail.serverFailure());
      }
    } catch (e) {
      if (kDebugMode) {
        print('!=!=!=!=!=!=!=!=!=!=!=!=!=!=!=!=!=!=!=!=!=${e.toString()}');
      }

      return const Left(DownloadsFail.clientFailure());
    }
  }
}
