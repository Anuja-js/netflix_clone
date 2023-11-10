
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';
import 'package:netflix/domain/NewAndHot/NeewAndHotData.dart';
import 'package:netflix/domain/NewAndHot/sevice_newAndHot.dart';
import 'package:netflix/domain/core/api_end_points.dart';import 'package:netflix/domain/core/failure/downloadfailures.dart';

import '../../core/strings.dart';
import '../api_key.dart';

@LazySingleton(as: NewRepo)
class NewAndHotRepo implements NewRepo {
  @override
  Future<Either<DownloadsFail, NeewAndHotData>> getCommingsoonList({
    String? key
  }) async {
    try {
      if (kDebugMode) {
        print(ApiEndPoints.downloads);
      }

      final Response response =

      await Dio(BaseOptions()).get("$baseUrl/trending/movie/day?api_key=$apiKey");
      if (response.statusCode == 200 || response.statusCode == 201) {

        print(
            "sdfghj............................................../////////////////////////////////.${response.data}");

        return Right(NeewAndHotData.fromJson(response.data));
      } else {
        return const Left(DownloadsFail.serverFailure());
      }
    } catch (e) {
      print('=====================${e.toString()}');


      return const Left(DownloadsFail.clientFailure());
    }
  }

  @override
  Future<Either<DownloadsFail, NeewAndHotData>> getEveryoneList({String? key})
  async {
    try {
      if (kDebugMode) {
        print(ApiEndPoints.downloads);
      }

      final Response response =

      await Dio(BaseOptions()).get("$baseUrl/trending/movie/day?api_key=$apiKey");
      if (response.statusCode == 200 || response.statusCode == 201) {

        print(
            "sdfghj............................................../////////////////////////////////.${response.data}");


        return Right(NeewAndHotData.fromJson(response.data));
      } else {
        return const Left(DownloadsFail.serverFailure());
      }
    } catch (e) {
      print('=====================${e.toString()}');


      return const Left(DownloadsFail.clientFailure());
    }
  }
}
