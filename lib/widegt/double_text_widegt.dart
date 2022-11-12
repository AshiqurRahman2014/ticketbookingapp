import 'package:flutter/material.dart';

import '../utils/app_style.dart';

class AppDoubleTxtWidegt extends StatelessWidget {
  final String bigTxt;
  final String smallTxt;
  const AppDoubleTxtWidegt({Key? key, required this.bigTxt, required this.smallTxt}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(bigTxt,style: Styles.headLineStyle2,),
        InkWell(
            onTap: (){
            },
            child: Text(smallTxt,style: Styles.textStyle.copyWith(color: Colors.blue))),

      ],
    );
  }
}
