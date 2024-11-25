// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:netflix/applications/download_block_state/downloads_bloc.dart';
import 'package:netflix/applications/newAndHot/new_and_hot_bloc.dart';
import 'package:netflix/applications/search_block/search_bloc.dart';
import 'package:netflix/core/colors/colors.dart';
import 'package:netflix/domain/core/di/injectable.dart';
import 'package:netflix/presentation/main_page/widgets/screen_main_page.dart';
import 'applications/fast_and_laughs/fast_laughs_bloc.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
await  configureinjection();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
 @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (ctx) => getit<DownloadsBloc>()),
        BlocProvider(create: (ctx) => getit<SearchBloc>()),
        BlocProvider(create: (ctx) => getit<FastLaughsBloc>()),
        BlocProvider(create: (ctx) => getit<NewAndHotBloc>()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
            scaffoldBackgroundColor: backgroundColor,
            textTheme: const TextTheme(
                bodyMedium: TextStyle(color: Colors.white),
                bodyLarge: TextStyle(color: Colors.white)),
            colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.blue)
                .copyWith(background: Colors.black)
            // colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
            ),
        home: ScreenMainPage(),
      ),
    );
  }
}
