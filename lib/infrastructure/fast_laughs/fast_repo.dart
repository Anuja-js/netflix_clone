
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';
import 'package:netflix/domain/core/api_end_points.dart';import 'package:netflix/domain/core/failure/downloadfailures.dart';
import 'package:netflix/domain/fast_laughs/models/ProfilePic.dart';
import 'package:netflix/domain/fast_laughs/models/VediosData.dart';
import 'package:netflix/domain/fast_laughs/vedio_result.dart';

import '../../core/strings.dart';
import '../api_key.dart';

@LazySingleton(as: FastRepo)
class FastLaughRepo implements FastRepo {
  @override
  Future<Either<DownloadsFail, ProfilePic>> getprofileList({
    String? key
  }) async {
    try {
      if (kDebugMode) {
        print(ApiEndPoints.fastlaughs);
      }

      final Response response =

      await Dio(BaseOptions()).get("$baseUrl/movie/now_playing?api_key=$apiKey");
      if (response.statusCode == 200 || response.statusCode == 201) {
        // final searchList = (response.data['results'] as List).map((e) {
        //   return Downloads.fromJson(e);
        // }).toList();

        // if (kDebugMode) {
        print(
            "sdfghj............................................../////////////////////////////////.${response.data}");
        // }

        return Right(ProfilePic.fromJson(response.data));
      } else {
        return const Left(DownloadsFail.serverFailure());
      }
    } catch (e) {
      print('=====================${e.toString()}');


      return const Left(DownloadsFail.clientFailure());
    }
  }

  @override
  Future<Either<DownloadsFail, VediosData>> getvedioList({String? key})
  async {
    try {
      if (kDebugMode) {
        print(ApiEndPoints.vedios);
      }

      final Response response =

      await Dio(

          BaseOptions(headers: {'Authorization':'nFmUzR1pUdWoHSKjjJ7wtZwB4ahNQeBTPiji8BL1JM94zndmsPGQXoZU'})).get("https://api.pexels.com/videos/popular?per_page=1");
      if (response.statusCode == 200 || response.statusCode == 201) {

        print(
            "sdfghj............................................../////////////////////////////////.${response.data}");


        return Right(VediosData.fromJson(response.data));
      } else {
        return const Left(DownloadsFail.serverFailure());
      }
    } catch (e) {
      print('=====================${e.toString()}');


      return const Left(DownloadsFail.clientFailure());
    }
  }
}
