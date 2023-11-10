// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../../../applications/download_block_state/downloads_bloc.dart' as _i11;
import '../../../applications/fast_and_laughs/fast_laughs_bloc.dart' as _i12;
import '../../../applications/newAndHot/new_and_hot_bloc.dart' as _i13;
import '../../../applications/search_block/search_bloc.dart' as _i14;
import '../../../infrastructure/downloads/downloads_repository.dart' as _i6;
import '../../../infrastructure/fast_laughs/fast_repo.dart' as _i4;
import '../../../infrastructure/new_AndHot/new_andHotRrepo.dart' as _i8;
import '../../../infrastructure/search/search_repo.dart' as _i10;
import '../../downloads/i_download_repo_fazzard.dart' as _i5;
import '../../fast_laughs/vedio_result.dart' as _i3;
import '../../NewAndHot/sevice_newAndHot.dart' as _i7;
import '../../search/search_service.dart'
    as _i9; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(
  _i1.GetIt get, {
  String? environment,
  _i2.EnvironmentFilter? environmentFilter,
}) {
  final gh = _i2.GetItHelper(
    get,
    environment,
    environmentFilter,
  );
  gh.lazySingleton<_i3.FastRepo>(() => _i4.FastLaughRepo());
  gh.lazySingleton<_i5.IdownloadRepo>(() => _i6.DownnloadsRepository());
  gh.lazySingleton<_i7.NewRepo>(() => _i8.NewAndHotRepo());
  gh.lazySingleton<_i9.SearchRepo>(() => _i10.SearchRepository());
  gh.factory<_i11.DownloadsBloc>(
      () => _i11.DownloadsBloc(get<_i5.IdownloadRepo>()));
  gh.factory<_i12.FastLaughsBloc>(
      () => _i12.FastLaughsBloc(get<_i3.FastRepo>()));
  gh.factory<_i13.NewAndHotBloc>(() => _i13.NewAndHotBloc(get<_i7.NewRepo>()));
  gh.factory<_i14.SearchBloc>(() => _i14.SearchBloc(get<_i9.SearchRepo>()));
  return get;
}
