import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';
import 'package:netflix/domain/core/api_end_points.dart';

import 'package:netflix/domain/core/failure/downloadfailures.dart';

import 'package:netflix/domain/downloads/models/downloads_main.dart';

import '../../domain/downloads/i_download_repo_fazzard.dart';

@LazySingleton(as: IdownloadRepo)
class DownnloadsRepository implements IdownloadRepo {
  @override
  Future<Either<DownloadsFail, List<Downloads>>> getDownloadImages() async {
    try {
      if (kDebugMode) {
        print(ApiEndPoints.downloads);
      }
      final Response response =
          await Dio(BaseOptions()).get(ApiEndPoints.downloads);
      if (response.statusCode == 200 || response.statusCode == 201) {
        final downloadsList = (response.data['results'] as List).map((e) {
          return Downloads.fromJson(e);
        }).toList();

        if (kDebugMode) {
          print(
              "sdfghj............................................../////////////////////////////////.${downloadsList}");
        }
        return Right(downloadsList);
      } else {
        return const Left(DownloadsFail.serverFailure());
      }
    } catch (e) {
      print(e.toString());
      return const Left(DownloadsFail.clientFailure());
    }
  }
}
