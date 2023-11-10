import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:netflix/core/constants.dart';
import 'package:netflix/presentation/home/widgets/heading.dart';
import 'package:netflix/presentation/home/widgets/number_card.dart';

import '../../../applications/newAndHot/new_and_hot_bloc.dart';

class NumberMainTile extends StatelessWidget {
  const NumberMainTile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewAndHotBloc, NewAndHotState>(
      builder: (context, state) {
        return  Column(crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const HeadingScreen(
              text: "Top 10 TV Shows in India Today",
            ),
            kh10,
            LimitedBox(
              maxHeight: 200,
              child:state.isLoading==true?Center(child: CircularProgressIndicator()): ListView(scrollDirection: Axis.horizontal,
                physics: const ScrollPhysics(),
                shrinkWrap: true,
                children: List.generate(
                    state.neewAndHotData?.results?.length??0, (index) => NumberCardWidget(index: index,)),),
            )
          ],
        );
      },
    );
  }
}
