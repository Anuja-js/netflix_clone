import 'package:flutter/material.dart';
import 'package:netflix/core/colors/colors.dart';
class HeadingScreen extends StatelessWidget {
  final String text;
  const HeadingScreen({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(text,style: const TextStyle(
        color: buttonColorwhite,fontSize:23,fontWeight: FontWeight.bold
    ),);;
  }
}
