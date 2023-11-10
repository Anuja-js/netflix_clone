// ignore_for_file: camel_case_types

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:netflix/applications/newAndHot/new_and_hot_bloc.dart';
import 'package:netflix/core/constants.dart';
import 'package:netflix/presentation/home/widgets/heading.dart';
import 'package:netflix/presentation/widgets/main_cards.dart';

class MainTittleHead extends StatelessWidget {
  final String text;

  const MainTittleHead({
    super.key, required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewAndHotBloc, NewAndHotState>(
      builder: (context, state) {
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 5),
          child: Column(crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              HeadingScreen(
                text: text,
              ),
              kh10,
              LimitedBox(
                maxHeight: 200,
                child: state.isLoading==true?Center(child: CircularProgressIndicator()):ListView(scrollDirection: Axis.horizontal,
                  physics: const ScrollPhysics(),
                  shrinkWrap: true,
                  children: List.generate(
                      state.neewAndHotData?.results?.length??0, (index) => MainCards(index: index,)),),
              )
            ],
          ),
        );
      },
    );
  }
}