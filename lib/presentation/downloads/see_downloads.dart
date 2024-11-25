import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:netflix/applications/download_block_state/downloads_bloc.dart';
import 'package:netflix/core/colors/colors.dart';

class SeeDownloadScreen extends StatefulWidget {
  const SeeDownloadScreen({Key? key}) : super(key: key);

  @override
  State<SeeDownloadScreen> createState() => _SeeDownloadScreenState();
}

class _SeeDownloadScreenState extends State<SeeDownloadScreen> {
  final ScrollController _scrollController = ScrollController();
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    context.read<DownloadsBloc>().add(const DownloadsEvent.getscreenImages());

    _scrollController.addListener(_onScroll);
  }

  @override
  void dispose() {
    _scrollController.dispose();
    // context.read<DownloadsBloc>().add(const DownloadsEvent.getscreenImages());
    super.dispose();
  }

  void _onScroll() {
    if (kDebugMode) {
      print(
          ".......@@@@@@@@@@@@...................${_scrollController.position.pixels}");
    }
    if (kDebugMode) {
      print(
          ".....................${_scrollController.position.maxScrollExtent}");
    }

    if (_scrollController.position.pixels ==
        _scrollController.position.maxScrollExtent) {
      if (kDebugMode) {
        print('---------------funtion start');
      }
      final state = BlocProvider.of<DownloadsBloc>(context).state;
      var page = (state.page ?? 1) + 1;
      if (kDebugMode) {
        print(state.page);
      }
      // var page=    state.copyWith(page: (state.page ?? 1) + 1);
      // print('===32@==========${page}');
      context.read<DownloadsBloc>().add(const DownloadsEvent.getscreenImages());
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CupertinoColors.white,
      appBar: AppBar(
        backgroundColor: backgroundColor,
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(Icons.arrow_back_ios)),
      ),
      body: SafeArea(child: BlocBuilder<DownloadsBloc, Downloadstate>(
        builder: (context, state) {
          return state.isLoading
              ? const Center(
                  child: CircularProgressIndicator(),
                )
              : Column(
                  children: [
                    Expanded(
                      child: ListView.builder(
                        shrinkWrap: true,
                        controller: _scrollController,
                        itemCount: state.modelScreen?.length ?? 0,
                        itemBuilder: (context, index) {
                          return Column(
                            children: [
                              const Divider(
                                height: 3,
                                color: grey,
                                thickness: 1,
                              ),
                              if (state.modelScreen != null)
                                Container(
                                  width: double.infinity,
                                  height: 290,
                                  decoration: BoxDecoration(
                                      color: backgroundColor,
                                      image: DecorationImage(
                                          image: NetworkImage(state
                                                  .modelScreen![index].avatar ??
                                              ""),
                                          fit: BoxFit.cover)),
                                ),
                            ],
                          );
                        },
                      ),
                    ),
                    state.ispageLoading
                        ? const SizedBox(
                            height: 50,
                            child: Center(
                              child: CircularProgressIndicator(),
                            ),
                          )
                        : const SizedBox()
                  ],
                );
        },
      )),
    );
  }
}
