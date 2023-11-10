import 'package:bordered_text/bordered_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:netflix/applications/newAndHot/new_and_hot_bloc.dart';
import 'package:netflix/core/colors/colors.dart';
import 'package:netflix/core/constants.dart';
class NumberCardWidget extends StatelessWidget {
  final int index;
  const NumberCardWidget({Key? key, required this.index}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewAndHotBloc, NewAndHotState>(
  builder: (context, state) {
    return  Stack(
      children: [
        
        Row(
          children: [
            const SizedBox(height: 150,width: 40,),
            Container(margin: const EdgeInsets.symmetric(horizontal: 5),
              width: 140,
              height: 250,
              decoration: BoxDecoration(borderRadius: r10,
                  image:  DecorationImage(
                      image: NetworkImage(
                          "$imageappentUrl${(state.neewAndHotData?.results![index].posterPath).toString()}"),
                      fit: BoxFit.cover)),
            ),
          ],
        ),
        Positioned(
            left: 20,bottom: -30,
            child: BorderedText(strokeColor: grey,
    strokeWidth: 8.0, child:Text("${index+1}",style: const TextStyle(fontSize: 140,decoration: TextDecoration.none,decorationColor: Colors.transparent,fontWeight:FontWeight.bold,color: backgroundColor),),),
        )
      ],
    );
  },
);
  }
}
