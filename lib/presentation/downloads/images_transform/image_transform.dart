// import 'dart:math';
//
// import 'package:flutter/material.dart';
// class TransformImage extends StatelessWidget {
//   const TransformImage({Key? key, required this.size, required this.images}) : super(key: key);
// final  List size;
// final List images;
//   @override
//   Widget build(BuildContext context) { final List images = [
//     "https://www.themoviedb.org/t/p/w220_and_h330_face/qA5kPYZA7FkVvqcEfJRoOy4kpHg.jpg",
//     "https://www.themoviedb.org/t/p/w220_and_h330_face/fiVW06jE7z9YnO4trhaMEdclSiC.jpg",
//     "https://www.themoviedb.org/t/p/w220_and_h330_face/kdPMUMJzyYAc4roD52qavX0nLIC.jpg"
//   ];
//     return    Transform.rotate(angle: 20*pi/180,
//       child: Container(
//         width: MediaQuery.of(context).size.width*0.4,height:MediaQuery.of(context).size.width*0.58,
//         decoration: BoxDecoration(image: DecorationImage(image: NetworkImage(images as String ),),borderRadius: BorderRadius.circular(10)
//         ),
//       ),
//     );
//   }
// }
