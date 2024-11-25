// ignore_for_file: non_constant_identifier_names
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:netflix/applications/newAndHot/new_and_hot_bloc.dart';
import 'package:netflix/core/colors/colors.dart';
import 'package:netflix/core/constants.dart';
import 'package:netflix/presentation/home/widgets/number_maintile.dart';
import 'package:netflix/presentation/widgets/backGround_stack.dart';
import 'package:netflix/presentation/widgets/main_tittle_head.dart';

ValueNotifier<bool> Scoll = ValueNotifier(true);

class ScreenHome extends StatelessWidget {
  const ScreenHome({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      context
          .read<NewAndHotBloc>()
          .add(const NewAndHotEvent.getCommingsoonList());
      // context.read<NewAndHotBloc>().add(NewAndHotEvent.getVedios());
    });
    return Scaffold(body: BlocBuilder<NewAndHotBloc, NewAndHotState>(
      builder: (context, state) {
        return state.isLoading == true
            ? const Center(child: CircularProgressIndicator())
            : ValueListenableBuilder(
                valueListenable: Scoll,
                builder: (BuildContext context, index, _) {
                  return NotificationListener<UserScrollNotification>(
                    onNotification: (notification) {
                      final ScrollDirection direction = notification.direction;
                      if (direction == ScrollDirection.reverse) {
                        Scoll.value = false;
                      } else if (direction == ScrollDirection.forward) {
                        Scoll.value = true;
                      }
                      return true;
                    },
                    child: Stack(
                      children: [
                        ListView.builder(
                          itemCount: 1,
                          shrinkWrap: true,
                          itemBuilder: (BuildContext context, int index) {
                            return Column(
                              children: <Widget>[
                                StackPic(
                                  index: index,
                                ),
                                kh5,
                                const MainTittleHead(
                                  text: "Released in the past year",
                                ),
                                kh5,
                                const MainTittleHead(
                                  text: "Trending Now",
                                ),
                                kh5,
                                const NumberMainTile(),
                                const MainTittleHead(
                                  text: "Tense Dramas",
                                ),
                                kh5,
                                kh5,
                                const MainTittleHead(
                                  text: "South Indian Cinema",
                                ),
                              ],
                            );
                          },
                        ),
                        Scoll.value == true
                            ? AnimatedContainer(
                                duration: const Duration(microseconds: 1000),
                                height: 80,
                                width: double.infinity,
                                color: backgroundColor.withOpacity(0.3),
                                child: Column(
                                  children: [
                                    Row(
                                      children: [
                                        kw10,
                                        Image.network(
                                          "https://i.pinimg.com/originals/8c/74/0b/8c740bc13bd5a0a19c24d28dff98cbdd.png",
                                          width: 50,
                                          height: 50,
                                        ),
                                        const Spacer(),
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
                                        ),
                                        kw10,
                                      ],
                                    ),
                                    const Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Text("TV Shows", style: textstyle),
                                        Text("Movies", style: textstyle),
                                        Text("Categories", style: textstyle),
                                      ],
                                    )
                                  ],
                                ),
                              )
                            : kh5
                      ],
                    ),
                  );
                },
              );
      },
    ));
  }
}
