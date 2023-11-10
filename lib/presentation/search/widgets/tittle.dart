import 'package:flutter/cupertino.dart';
import 'package:netflix/core/colors/colors.dart';

class tittle_search extends StatelessWidget {
  const tittle_search({
    super.key, required this.text,
  });
  final String text;
  @override
  Widget build(BuildContext context) {
    return  Text(text,style: const TextStyle(
        color: buttonColorwhite,fontSize:23,fontWeight: FontWeight.bold
    ),);
  }
}