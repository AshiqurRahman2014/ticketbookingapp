
import 'package:flutter/material.dart';

import '../utils/app_layout.dart';

class AppLayoutBuilderWidegt extends StatelessWidget {
  final bool? isColor;
  final int section;
  final double width;
  const AppLayoutBuilderWidegt({Key? key, this.isColor, required this.section, this.width=3}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        print('The width is ${constraints.constrainWidth()}');
        return Flex(
          direction: Axis.horizontal,
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: List.generate(
            (constraints.constrainWidth()/section).floor(),
                (index) => SizedBox(
              width: AppLayout.getWidth(width),
              height: AppLayout.getHeight(1),
              child: DecoratedBox(
                decoration: BoxDecoration(
                  color: isColor==null? Colors.white: Colors.grey.shade300,),
              ),
            ),
          ),
        );
      },
    );
  }
}
