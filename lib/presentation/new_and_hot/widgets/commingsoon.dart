import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:netflix/applications/newAndHot/new_and_hot_bloc.dart';
import 'package:netflix/core/colors/colors.dart';
import 'package:netflix/core/constants.dart';
import 'package:netflix/presentation/main_page/widgets/custom_colum.dart';
import 'package:netflix/presentation/widgets/stack.dart';

class RowCommingSoon extends StatelessWidget {
  // final String image;
  final int index;
  const RowCommingSoon({
    super.key,
    required this.index,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewAndHotBloc, NewAndHotState>(
      builder: (context, state) {
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 15),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                width: 50,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "FEB",
                      style: TextStyle(fontSize: 16, color: grey),
                    ),
                    Text(
                      "11",
                      style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 4),
                    )
                  ],
                ),
              ),
              Container(padding: const EdgeInsets.all(0),
                width: MediaQuery.of(context).size.width - 50,
                // height: 450,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    StackWidgets(
                      image: "${(state.neewAndHotData?.results![index].backdropPath).toString()}",
                    ),
                     Row(
                      children: [
                        Expanded(
                            child: Text(
                    " ${(state.neewAndHotData?.results![index].originalTitle).toString()}",
                          style: const TextStyle(
                              fontSize: 40,
                              fontWeight: FontWeight.bold,
                              letterSpacing: -4),
                        )),
                        const ColumCustom(
                          icon: Icons.notifications_none_outlined,
                          iconsize: 20,
                          text: "Remind me",
                          textsize: 12,
                        ),
                        kw10,
                        const ColumCustom(
                          icon: Icons.info,
                          text: "Info",
                          textsize: 12,
                          iconsize: 20,
                        ),
                        kw10
                      ],
                    ),
                    kh5,
                    const Text("Coming on Friday"),
                    kh10,
                     Text(
                        " ${(state.neewAndHotData?.results![index].title).toString()}",
                      style:
                          const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    kh10,
                     Text(
                      " ${(state.neewAndHotData?.results![index].overview).toString()}",
                      style: const TextStyle(color: grey),
                    ),
                  ],
                ),
              )
            ],
          ),
        );
      },
    );
  }
}
