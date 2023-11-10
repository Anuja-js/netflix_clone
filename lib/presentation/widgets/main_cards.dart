// ignore_for_file: camel_case_types

import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:netflix/applications/newAndHot/new_and_hot_bloc.dart';
import 'package:netflix/core/constants.dart';

class MainCards extends StatelessWidget {
  final int index;

  const MainCards({
    super.key, required this.index,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewAndHotBloc, NewAndHotState>(
      builder: (context, state) {
        return Container(margin: const EdgeInsets.symmetric(horizontal: 5),
          width: 140,
          height: 250,
          decoration: BoxDecoration(borderRadius: r10,
              image:  DecorationImage(
                  image: NetworkImage(
                     "$imageappentUrl${(state.neewAndHotData?.results![index].backdropPath).toString()}"),
                  fit: BoxFit.cover)),
        );
      },
    );
  }
}
