import 'package:booktickets/screens/ticket_view.dart';
import 'package:booktickets/utils/app_layout.dart';
import 'package:booktickets/utils/app_style.dart';
import 'package:booktickets/widegt/tickets_tabs.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:barcode_widget/barcode_widget.dart';
import '../utils/app_info_list.dart';
import '../widegt/column_layout.dart';
import '../widegt/layout_builder_widegt.dart';

class TicketScreen extends StatelessWidget {
  const TicketScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: Stack(
        children: [
          ListView(
            padding: EdgeInsets.symmetric(
                horizontal: AppLayout.getHeight(20),
                vertical: AppLayout.getHeight(20)),
            children: [
              Gap(AppLayout.getHeight(40)),
              Text(
                "Tickets",
                style: Styles.headLineStyle1,
              ),
              Gap(AppLayout.getHeight(20)),
              const AppTicketTabs(firstTab: 'Upcoming', secondTab: 'Previous'),
              SizedBox(
                height: 20,
              ),
              Container(
                padding: EdgeInsets.only(right: AppLayout.getHeight(5)),
                child: TicketView(
                  tickets: ticketList[0],
                  isColor: true,
                ),
              ),
              SizedBox(height: 1),
              Container(
                color: Colors.white,
                margin: EdgeInsets.symmetric(horizontal: 15),
                padding: EdgeInsets.symmetric(horizontal: 15, vertical: 20),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        AppColumnLayout(
                          firstTxt: 'Flutter DB',
                          secondTxt: 'Passengers',
                          alignment: CrossAxisAlignment.start,
                        ),
                        AppColumnLayout(
                            firstTxt: '5221 3695455',
                            secondTxt: 'Passport',
                            alignment: CrossAxisAlignment.end)
                      ],
                    ),
                    Gap(AppLayout.getHeight(20)),
                    const AppLayoutBuilderWidegt(
                      section: 15,
                      isColor: false,
                      width: 5,
                    ),
                    Gap(AppLayout.getHeight(20)),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        AppColumnLayout(
                          firstTxt: '3254645 568963456',
                          secondTxt: 'Numbers of E-tickets',
                          alignment: CrossAxisAlignment.start,
                        ),
                        AppColumnLayout(
                            firstTxt: 'B2SG28',
                            secondTxt: 'Booking code',
                            alignment: CrossAxisAlignment.end)
                      ],
                    ),
                    const AppLayoutBuilderWidegt(
                      section: 15,
                      isColor: false,
                      width: 5,
                    ),
                    Gap(AppLayout.getHeight(20)),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            Row(
                              children: [
                                Image.asset(
                                  'assets/visa1.png',
                                  scale: 11,
                                ),
                                Text(
                                  ' *** 2562',
                                  style: Styles.headLineStyle3,
                                ),
                              ],
                            ),
                            Gap(5),
                            Text(
                              'Payment method',
                              style: Styles.headLineStyle4,
                            ),
                          ],
                        ),
                        AppColumnLayout(
                          firstTxt: '\$249,99',
                          secondTxt: 'Price',
                          alignment: CrossAxisAlignment.end,
                        ),
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(height: 1),
              /* draw barcode */
              Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(AppLayout.getHeight(21)),
                      bottomLeft: Radius.circular(AppLayout.getHeight(21)),
                    )),
                margin: EdgeInsets.only(top: AppLayout.getHeight(15), bottom: AppLayout.getHeight(15)),
                padding: EdgeInsets.only(top: AppLayout.getHeight(20), bottom: AppLayout.getHeight(20)),
                child: Container(
                  padding:
                      EdgeInsets.symmetric(horizontal: AppLayout.getHeight(15)),
                  child: ClipRRect(
                    borderRadius:
                        BorderRadius.circular(AppLayout.getHeight(15)),
                    child: BarcodeWidget(
                      data: 'https://github.com/AshiqurRahman2014',
                      barcode: Barcode.code128(),
                      drawText: false,
                      color: Styles.textColor,
                      width: double.infinity,
                      height: 70,
                    ),
                  ),
                ),
              ),
              Gap(AppLayout.getHeight(20)),
              Container(
                padding: EdgeInsets.only(right: AppLayout.getHeight(5)),
                child: TicketView(
                  tickets: ticketList[0],
                ),
              ),
            ],
          ),
          Positioned(
            top: AppLayout.getHeight(295),
            left: AppLayout.getHeight(20),
            child: Container(
              padding: EdgeInsets.all(3),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(color: Styles.textColor, width: 2),
              ),
              child: CircleAvatar(
                maxRadius: 4,
                backgroundColor: Styles.textColor,
              ),
            ),
          ),
          Positioned(
            top: AppLayout.getHeight(295),
            right: AppLayout.getHeight(20),
            child: Container(
              padding: EdgeInsets.all(3),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(color: Styles.textColor, width: 2),
              ),
              child: CircleAvatar(
                maxRadius: 4,
                backgroundColor: Styles.textColor,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
