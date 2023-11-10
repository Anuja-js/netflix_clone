import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:netflix/applications/download_block_state/downloads_bloc.dart';
import 'package:netflix/applications/newAndHot/new_and_hot_bloc.dart';
import 'package:netflix/core/colors/colors.dart';
import 'package:netflix/core/constants.dart';
import 'package:netflix/presentation/new_and_hot/widgets/commingsoon.dart';
import 'package:netflix/presentation/new_and_hot/widgets/watcheveryone.dart';

class NewAndHot extends StatelessWidget {
  const NewAndHot({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      context.read<NewAndHotBloc>().add(NewAndHotEvent.getCommingsoonList());
      // context.read<NewAndHotBloc>().add(NewAndHotEvent.getEveryoneList());
    });
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(100),
          child: AppBar(
            title: const Text("New & Hot",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.w900)),
            actions: [
              const Icon(
                Icons.cast,
                color: Colors.white,
                size: 30,
              ),
              kw10,
              Container(
                width: 25,
                height: 25,
                color: Colors.blue,
                margin: const EdgeInsets.symmetric(vertical: 14),
              ),
              kw10,
            ],
            backgroundColor: Colors.transparent,
            elevation: 0,
            bottom: TabBar(
                isScrollable: true,
                unselectedLabelColor: whiteColor,
                unselectedLabelStyle: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
                labelColor: backgroundColor,
                labelStyle: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
                indicator: BoxDecoration(borderRadius: r18, color: whiteColor),
                tabs: const [
                  Tab(
                    text: "🍿 Coming Soon",
                  ),
                  Tab(
                    text: "👀 Everyone's watching",
                  )
                ]),
          ),
        ),
        body: TabBarView(children: [
          _buildCommingSoon(),
          _buildWatcheveryone(),
        ]),
      ),
    );
  }
}

Widget _buildCommingSoon() {
  return BlocBuilder<NewAndHotBloc, NewAndHotState>(
    builder: (context, state) {
      return state.isLoading==true?Center(child: CircularProgressIndicator()):  ListView.builder(
        itemCount: state.neewAndHotData?.results?.length,
        shrinkWrap: true,
        itemBuilder: (BuildContext context, int index) {
          return RowCommingSoon(
            index: index,
          );
        },
      );
    },
  );
}

Widget _buildWatcheveryone() {
  return BlocBuilder<NewAndHotBloc, NewAndHotState>(
    builder: (context, state) {
      return state.isLoading==true?Center(child: CircularProgressIndicator()):  ListView.builder(
        shrinkWrap: true,
        itemCount:state.neewAndHotData?.results?.length,
        itemBuilder: (BuildContext context, int index) {
          return RowWatcheveryone(index: index,);
        },
      );
    },
  );
}
