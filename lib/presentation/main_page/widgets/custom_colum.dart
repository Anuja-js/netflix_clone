
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:netflix/core/colors/colors.dart';

class ColumCustom extends StatelessWidget {
  final String text;
  final IconData icon;
  final double iconsize;
  final double textsize;
  const ColumCustom({
    super.key, required this.text, required this.icon, this.iconsize=30,  this.textsize=18,
  });

  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
        Icon(
          icon,
          color: whiteColor,
          size: iconsize,
        ),
        Text(
        text,
          style:  TextStyle(fontSize: textsize),
        )
      ],
    );
  }
}