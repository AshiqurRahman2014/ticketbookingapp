import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../utils/app_layout.dart';
import '../utils/app_style.dart';

class AppColumnLayout extends StatelessWidget {
  final String firstTxt;
  final String secondTxt;
  final bool? isColor;
  final CrossAxisAlignment alignment;

  const AppColumnLayout({Key? key,
    required this.firstTxt,
    required this.alignment,
    required this.secondTxt,
    this.isColor}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: alignment,
       children: [
         Text(firstTxt, style: isColor==null? Styles.headLineStyle3.copyWith(color: Colors.black):Styles.headLineStyle3),
         Gap(AppLayout.getHeight(5)),
         Text(secondTxt, style: isColor==null? Styles.headLineStyle4.copyWith(color: Colors.black26):Styles.headLineStyle4,),
       ],
    );
  }
}
