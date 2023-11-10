
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:netflix/applications/newAndHot/new_and_hot_bloc.dart';
import 'package:netflix/core/colors/colors.dart';
import 'package:netflix/core/constants.dart';
import 'package:netflix/presentation/main_page/widgets/custom_colum.dart';
import 'package:netflix/presentation/widgets/stack.dart';

class RowWatcheveryone extends StatelessWidget {
  final int index;
  const RowWatcheveryone({
    super.key, required this.index,
  });

  @override
  Widget build(BuildContext context) {
    return  BlocBuilder<NewAndHotBloc, NewAndHotState>(
  builder: (context, state) {
    return Column(

      crossAxisAlignment: CrossAxisAlignment.start,
      children:  [
      kh10,
      Text(
             " ${(state.neewAndHotData?.results![index].title).toString()}",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
      kh10,
      Text( " ${(state.neewAndHotData?.results![index].overview).toString()}",
        style: TextStyle(color: grey),

      ),kh50,
      StackWidgets(image: "${(state.neewAndHotData?.results![index].posterPath).toString()}",),
      kh10,
      Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          ColumCustom(text: "Share", icon: Icons.share,iconsize: 25,textsize: 12,),kw10,
          ColumCustom(text: "My List", icon: Icons.add,iconsize: 25,textsize: 12,),kw10,
          ColumCustom(text: "Play", icon: Icons.play_arrow_sharp,iconsize: 25,textsize: 12,),kw10,

        ],)
    ],);
  },
);
  }
}