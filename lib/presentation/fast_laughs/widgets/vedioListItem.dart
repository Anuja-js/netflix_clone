import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:netflix/applications/fast_and_laughs/fast_laughs_bloc.dart';
import 'package:netflix/core/colors/colors.dart';
import 'package:netflix/core/constants.dart';
import 'package:video_player/video_player.dart';
import 'package:flick_video_player/flick_video_player.dart';

class VedioListItem extends StatefulWidget {
  final String? image;
  final int index;
  final String vedio;
  const VedioListItem({Key? key, this.image, required this.index, required this.vedio}) : super(key: key);

  @override
  State<VedioListItem> createState() => _VedioListItemState();
}

class _VedioListItemState extends State<VedioListItem> {
  late FlickManager? flickManager;
  List<FlickManager>? files;
  @override
  void initState() {
    super.initState();
    // flickManager = FlickManager(
    //   videoPlayerController:
    //     // VideoPlayerController.networkUrl(Uri.dataFromString( "https://www.bing.com/videos/riverview/relatedvideo?&q=vedio+nature+mp3&&mid=3EC07AB13CC45FAD48C43EC07AB13CC45FAD48C4&&FORM=VRDGAR"))
    //   VideoPlayerController.network("https://player.vimeo.com/external/296210754.hd.mp4?s=08c03c14c04f15d65901f25b542eb2305090a3d7&profile_id=175&oauth2_token_id=57447761"),
    // );
  }

  // @override
  // void dispose() {
  //   flickManager.dispose();
  //   super.dispose();
  // }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FastLaughsBloc, FastLaughsState>(
  builder: (context, state) {
    return Stack(
      children: [
        // controller!.value.isInitialized
        //     ? AspectRatio(
        //   aspectRatio: controller!.value.aspectRatio,
        //   child: VideoPlayer(controller!),
        // )
        //     :

        SizedBox(width: double.infinity,height: MediaQuery.of(context).size.height,
            child:FlickVideoPlayer(
                flickManager:FlickManager(

                  videoPlayerController:
                  // VideoPlayerController.networkUrl(Uri.dataFromString( "https://www.bing.com/videos/riverview/relatedvideo?&q=vedio+nature+mp3&&mid=3EC07AB13CC45FAD48C43EC07AB13CC45FAD48C4&&FORM=VRDGAR"))
                  // ignore: deprecated_member_use
                  VideoPlayerController.network(widget.vedio),
                ),
              // flickVideoWithControls: const FlickVideoWithControls(videoFit: BoxFit.cover,),
            ),),
        Align(
          alignment: Alignment.bottomRight,
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 28, horizontal: 10),
            child: Column(crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 14.0),
                  child: CircleAvatar(radius: 30,
                    backgroundImage: NetworkImage( "$imageappentUrl${widget.image}",),
                  ),
                ),
                const VedioActionsWidgets(icon: Icons.emoji_emotions, tittle: "LOL"),
                const VedioActionsWidgets(icon: Icons.add, tittle: "My List"),
                const VedioActionsWidgets(icon: Icons.share, tittle: "Share"),
                kh10,
                // const VedioActionsWidgets(icon: Icons.play_arrow_sharp, tittle: "Play")
              ],
            ),
          ),
        )
      ],
    );
  },
);
  }
}




class VedioActionsWidgets extends StatelessWidget {
  final IconData icon;
  final String tittle;

  const VedioActionsWidgets({Key? key, required this.icon, required this.tittle}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12.0,horizontal: 12),
      child: Column(children: [
        Icon(icon,color: whiteColor,),Text(tittle,style: const TextStyle(color: whiteColor,fontSize: 16,),)
      ],),
    );
  }


}
