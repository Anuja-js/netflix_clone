import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:netflix/applications/download_block_state/downloads_bloc.dart';
import 'package:netflix/core/colors/colors.dart';
import 'package:netflix/core/constants.dart';
import 'package:netflix/presentation/downloads/see_downloads.dart';

import '../../widgets/app_bar_widget.dart';

class Downloads extends StatefulWidget {
  const Downloads({Key? key}) : super(key: key);

  @override
  State<Downloads> createState() => _DownloadsState();
}

class _DownloadsState extends State<Downloads> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      BlocProvider.of<DownloadsBloc>(context).add(const DownloadsEvent.getDownloadImages());
    });
    // BlocProvider.of<DownloadsBloc>(context)
    //     .add(const DownloadsEvent.getDownloadImages());
  }
  @override
  Widget build(BuildContext context) {

    final widgets = [
      const _smartDownloads(),
      const Section2(),
      const Section3()
    ];

    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(50),
        child: AppbarWidget(
          tittle: 'Downloads',
        ),
      ),
      body: ListView.separated(
        padding: const EdgeInsets.all(10),
        separatorBuilder: (BuildContext context, int index) {
          return const SizedBox(
            height: 25,
          );
        },
        itemBuilder: (BuildContext context, int index) {
          return widgets[index];
        },
        itemCount: widgets.length,
      ),
    );
  }
}

// ignore: camel_case_types
class _smartDownloads extends StatelessWidget {
  const _smartDownloads();

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Icon(
          Icons.settings,
          color: whiteColor,
        ),
        kw5,
        Text("Smart Downloads")
      ],
    );
  }
}

class Section2 extends StatelessWidget {
  const Section2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // WidgetsBinding.instance!.addPostFrameCallback((_) {
    //   BlocProvider.of<DownloadsBloc>(context).add(DownloadsEvent.getDownloadImages());
    // });
    //   final List images = [
    //   "https://www.themoviedb.org/t/p/w220_and_h330_face/qA5kPYZA7FkVvqcEfJRoOy4kpHg.jpg",
    //   "https://www.themoviedb.org/t/p/w220_and_h330_face/fiVW06jE7z9YnO4trhaMEdclSiC.jpg",
    //   "https://www.themoviedb.org/t/p/w220_and_h330_face/kdPMUMJzyYAc4roD52qavX0nLIC.jpg"
    // ];

    final Size size = MediaQuery.of(context).size;


    return Column(
      children: [
        const Text(
          "Introducing Downdloads for you",
          style: TextStyle(
              color: whiteColor, fontSize: 24, fontWeight: FontWeight.bold),
          textAlign: TextAlign.center,
        ),
        kh10,
        const Text(
          "We will download a personalised selection of\nmovies and show for you,So there's\n always something to watch on your\ndevice.",
          textAlign: TextAlign.center,
          style: TextStyle(
            color: grey,
            fontSize: 16,
          ),
        ),
        BlocBuilder<DownloadsBloc, Downloadstate>(
          builder: (context, state) {
            return SizedBox(
              width: size.width,
              height: size.width,
              child:
              state.isLoading?const Center(child: CircularProgressIndicator()):
              Stack(
                alignment: Alignment.center,
                children: [
                  Center(
                      child: CircleAvatar(
                    backgroundColor: grey.withOpacity(0.6),
                    radius: size.width * 0.37,
                  )),
                  TransformImage(
                    images: '$imageappentUrl${state.downloads?[0].posterPath}',
                    angle: 18,
                    margin: const EdgeInsets.only(left: 166, top: 25),
                    sizee: Size(size.width * 0.35, size.width * 0.53),
                  ),
                  TransformImage(
                    images: '$imageappentUrl${state.downloads?[1].posterPath}',
                    angle: -18,
                    margin: const EdgeInsets.only(right: 166, top: 25),
                    sizee: Size(size.width * 0.35, size.width * 0.53),
                  ),
                  TransformImage(
                    images: '$imageappentUrl${state.downloads?[2].posterPath}',
                    radius: 8,
                    margin: const EdgeInsets.only(left: 0, bottom: 10, top: 10),
                    sizee: Size(size.width * 0.4, size.width * 0.6),
                  )
                ],
              ),
            );
          },
        ),
      ],
    );
  }
}

class Section3 extends StatelessWidget {
  const Section3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        BlocBuilder<DownloadsBloc, Downloadstate>(
  builder: (context, state) {
    return MaterialButton(
          minWidth: double.infinity,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          onPressed: () {},
          color: buttonColorBlue,
          child:  const Padding(
            padding: EdgeInsets.symmetric(vertical: 10),
            child: Text('SignUp',
              // '${state.downloads}',
              style: TextStyle(
                  color: whiteColor, fontWeight: FontWeight.bold, fontSize: 20),
            ),
          ),
        );
  },
),
        kh10,
        MaterialButton(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context){
              return SeeDownloadScreen();

            }));
            
          },
          color: buttonColorwhite,
          child: const Padding(
            padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
            child: Text(
              "See What you can download",
              style: TextStyle(
                  color: backgroundColor,
                  fontWeight: FontWeight.bold,
                  fontSize: 20),
            ),
          ),
        )
      ],
    );
  }
}

class TransformImage extends StatelessWidget {
  const TransformImage(
      {Key? key,
      required this.images,
      this.angle = 0,
      required this.margin,
      required this.sizee,
      this.radius = 10})
      : super(key: key);
  final String images;
  final double angle;
  final double radius;
  final Size sizee;
  final EdgeInsets margin;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: margin,
      child: Transform.rotate(
        angle: angle * pi / 180,
        child: Container(
          width: sizee.width,
          height: sizee.height,
          decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: NetworkImage(
                  images,
                ),
              ),
              borderRadius: BorderRadius.circular(radius)),
        ),
      ),
    );
  }
}
