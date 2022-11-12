import 'package:booktickets/utils/app_layout.dart';
import 'package:booktickets/utils/app_style.dart';
import 'package:booktickets/widegt/thick_container.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../widegt/column_layout.dart';
import '../widegt/layout_builder_widegt.dart';

class TicketView extends StatelessWidget {
  final Map<String, dynamic> tickets;
  final bool? isColor;
  const TicketView({Key? key, required this.tickets, this.isColor}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return SizedBox(
      width: size.width*0.85,
      height: AppLayout.getHeight(200),
      child: Container(
        margin: EdgeInsets.only(right: AppLayout.getHeight(16)),
        child: Column(
          children: [
            /*
            showing the blue part of card/ticket
            */
            Container(
              decoration:  BoxDecoration(
                color: isColor ==null? Color(0xFF526799): Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(AppLayout.getHeight(21)),
                    topRight: Radius.circular(AppLayout.getHeight(21))),
              ),
              padding: EdgeInsets.all(AppLayout.getHeight(16)),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text(
                        tickets['form']['code'],
                        style:
                           isColor==null? Styles.headLineStyle3.copyWith(color: Colors.white): Styles.headLineStyle3,
                      ),
                      Expanded(child: Container()),
                      ThickContainer(isColor: true,),
                      Expanded(
                        child: Stack(
                          children: [
                            SizedBox(
                              height: AppLayout.getHeight(24),
                              child: LayoutBuilder(
                                builder: (BuildContext context,
                                    BoxConstraints constraints) {
                                  return Flex(
                                    direction: Axis.horizontal,
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: List.generate(
                                      (constraints.constrainWidth() / 6)
                                          .floor(),
                                      (index) => SizedBox(
                                        width: 3,
                                        height: 1,
                                        child: DecoratedBox(
                                          decoration: BoxDecoration(
                                            color: isColor==null ?Colors.white: Colors.grey.shade300,
                                          ),
                                        ),
                                      ),
                                    ),
                                  );
                                },
                              ),
                            ),
                            Center(
                                child: Transform.rotate(
                              angle: 1.5,
                              child: Icon(
                                Icons.local_airport_rounded,
                                color: isColor==null? Colors.white: Color(0xFF8ACCF7),
                              ),
                            )),
                          ],
                        ),
                      ),
                      ThickContainer(isColor: true),
                      Expanded(child: Container()),
                      Text(
                        tickets['to']['code'],
                        style:
                            isColor==null? Styles.headLineStyle3.copyWith(color: Colors.white): Styles.headLineStyle3,
                      ),
                    ],
                  ),
                  const Gap(3),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: AppLayout.getWidth(100),
                        child: Text(
                          tickets['form']['name'],
                          style: isColor==null? Styles.headLineStyle4
                              .copyWith(color: Colors.white): Styles.headLineStyle4,
                        ),
                      ),
                      Text(
                        tickets['flying_time'],
                        style:
                            isColor==null? Styles.headLineStyle4.copyWith(color: Colors.white): Styles.headLineStyle4,
                      ),
                      SizedBox(
                        width: AppLayout.getWidth(100),
                        child: Text(
                          tickets['to']['name'],
                          textAlign: TextAlign.end,
                          style: isColor==null? Styles.headLineStyle4
                              .copyWith(color: Colors.white): Styles.headLineStyle4,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            /* showing the orange part of card.ticket */

            Container(
              color: isColor==null? Styles.orangeColor: Colors.white,
              child: Row(
                children: [
                 SizedBox(
                    height: AppLayout.getHeight(20),
                    width: AppLayout.getWidth(10),
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                          color: isColor==null? Colors.grey.shade200: Colors.white,
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(10),
                            bottomRight: Radius.circular(10),
                          )),
                    ),
                  ),
                  const Expanded(
                    child: Padding(
                      padding: EdgeInsets.all(12.0),
                      child: AppLayoutBuilderWidegt(section: 6,),
                    ),
                  ),
                 SizedBox(
                    height: AppLayout.getHeight(20),
                    width: AppLayout.getWidth(10),
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                        color: isColor==null? Colors.white: Colors.grey.shade300,
                        borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(10),
                          bottomLeft: Radius.circular(10),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),

            Container(
              decoration: BoxDecoration(
                color: isColor==null?Styles.orangeColor:Colors.white,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(isColor==null? 21:0),
                  bottomRight: Radius.circular(isColor==null? 21:0),
                ),
              ),
              padding:const EdgeInsets.only(left: 16, top: 10, right: 16, bottom: 16),
              child: Column(
                children:[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children:[
                      AppColumnLayout(
                        firstTxt: tickets['date'],
                        alignment: CrossAxisAlignment.start,
                        secondTxt: "Date",isColor: isColor,),

                      AppColumnLayout(
                        firstTxt: tickets['number'].toString(),
                        alignment: CrossAxisAlignment.end,
                        secondTxt: "Number",
                        isColor: isColor,),
                    ],
                  )
                ],
              ),
            )

          ],
        ),
      ),
    );
  }
}
