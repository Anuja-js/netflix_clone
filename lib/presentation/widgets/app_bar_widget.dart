import 'package:flutter/material.dart';
import 'package:netflix/core/constants.dart';

class AppbarWidget extends StatelessWidget {
   AppbarWidget({Key? key, required this.tittle}) : super(key: key);
final String tittle;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        kw5,
 Text(tittle,style: const TextStyle(fontSize: 30,fontWeight: FontWeight.w900)),
      const Spacer(),
      const Icon(Icons.cast,color: Colors.white,size: 30,),
kw10,
        Container(width:25,height: 25,
          color: Colors.blue,
        ),
        kw10,

    ],);
  }
}
