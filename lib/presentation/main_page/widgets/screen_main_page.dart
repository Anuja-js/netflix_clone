import 'package:flutter/material.dart';
import 'package:netflix/presentation/downloads/widgets/scrren_downloads.dart';
import 'package:netflix/presentation/fast_laughs/scrren_fast_laughs.dart';
import 'package:netflix/presentation/home/screen_home.dart';
import 'package:netflix/presentation/main_page/widgets/bottom_nav.dart';
import 'package:netflix/presentation/new_and_hot/screen_new_and_hot.dart';
import 'package:netflix/presentation/search/screen_search.dart';

class ScreenMainPage extends StatelessWidget {
  ScreenMainPage({Key? key}) : super(key: key);
  // ignore: non_constant_identifier_names
  final _Pages = [
    const ScreenHome(),
    const NewAndHot(),
    const FastLaughs(),
    const SearchScreen(),
    const Downloads()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ValueListenableBuilder(
            valueListenable: indexChangedNotifier,
            builder: (context, int index, _) {
              return _Pages[index];
            }),
        ),
      bottomNavigationBar: const BottomNavigationWidgets(),
    );
  }
}
