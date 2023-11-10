import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:netflix/applications/fast_and_laughs/fast_laughs_bloc.dart';
import 'package:netflix/presentation/fast_laughs/widgets/vedioListItem.dart';

import '../../domain/fast_laughs/models/ProfilePic.dart';

class FastLaughs extends StatefulWidget {
  const FastLaughs({Key? key}) : super(key: key);

  @override
  State<FastLaughs> createState() => _FastLaughsState();
}

class _FastLaughsState extends State<FastLaughs> {
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      context.read<FastLaughsBloc>().add(FastLaughsEvent.getProfileImages());
      context.read<FastLaughsBloc>().add(FastLaughsEvent.getVedios());
    });
    return Scaffold(body: BlocBuilder<FastLaughsBloc, FastLaughsState>(
      builder: (context, state) {
        return SafeArea(
            child: PageView(
                scrollDirection: Axis.vertical,
                children: List.generate(
                    state.vediosData?.videos!.first.videoFiles?.length ==
                            state.profilePic?.results!.length
                        ? (state.profilePic?.results!.length??0)
                        : ((state.profilePic
                        ?.results!.length??0) <
                                (state.vediosData?.videos!.first.videoFiles
                                        ?.length ??
                                    0))
                            ? (state.profilePic?.results!.length??0)
                            : state.vediosData?.videos!.first.videoFiles
                                    ?.length ??
                                0, (index) {
                  return VedioListItem(
                      index: index,
                      image: state.profilePic?.results?[index].backdropPath,
                      vedio: state.vediosData?.videos!.first.videoFiles![index]
                              .link ??
                          '');
                })));
      },
    ));
  }
}
