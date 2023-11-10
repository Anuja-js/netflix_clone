
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:netflix/applications/newAndHot/new_and_hot_bloc.dart';
import 'package:netflix/core/colors/colors.dart';
import 'package:netflix/core/constants.dart';

class StackWidgets extends StatelessWidget {
  final String image ;

  const StackWidgets({
    super.key, required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          width: double.infinity,
          height: 200,
          child: Image.network("$imageappentUrl$image", fit: BoxFit.cover,),
        ),
        Positioned(bottom: 5, right: 10,
          child: CircleAvatar(backgroundColor: backgroundColor.withOpacity(0.5),
              radius: 25,
              child: IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.volume_off_outlined, size: 20,))),
        ),
      ],
    );
  }
  }