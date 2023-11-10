import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:netflix/applications/newAndHot/new_and_hot_bloc.dart';
import 'package:netflix/core/colors/colors.dart';
import 'package:netflix/core/constants.dart';
import 'package:netflix/presentation/main_page/widgets/custom_colum.dart';

class StackPic extends StatelessWidget {
  final int index;

  const StackPic({
    super.key, required this.index,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewAndHotBloc, NewAndHotState>(
      builder: (context, state) {
        return  Stack(
          children: [
               Container(
              width: double.infinity,
              height: 600,
              decoration:  BoxDecoration(
                color: Colors.white,
                image: DecorationImage(
                    image: NetworkImage(
                      "$imageappentUrl${(state.neewAndHotData?.results?.first.posterPath).toString()}"
                    ),
                    fit: BoxFit.cover),
              ),
            ),
            const Positioned(
              bottom: 10,
              left: 0,
              right: 0,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ColumCustom(text: 'Play', icon: Icons.add,),
                  _PlayButton(),
                  ColumCustom(text: 'Info', icon: Icons.info,),
                ],
              ),
            )
          ],
        );
      },
    );
  }
}

class _PlayButton extends StatelessWidget {

  const _PlayButton();

  @override
  Widget build(BuildContext context) {
    return TextButton.icon(
        style:
        ButtonStyle(backgroundColor: MaterialStateProperty.all(whiteColor)),
        onPressed: () {},
        icon: const Icon(
          Icons.play_arrow_sharp,
          size: 25,
          color: backgroundColor,
        ),
        label: const Padding(
          padding: EdgeInsets.symmetric(horizontal: 10.0),
          child: Text(
            "Play",
            style: TextStyle(fontSize: 20, color: backgroundColor),
          ),
        ));
  }
}