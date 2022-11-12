import 'package:booktickets/utils/app_style.dart';
import 'package:booktickets/widegt/column_layout.dart';
import 'package:booktickets/widegt/layout_builder_widegt.dart';
import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../utils/app_layout.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: ListView(
        padding: EdgeInsets.symmetric(
            horizontal: AppLayout.getHeight(20),
            vertical: AppLayout.getHeight(20)),
        children: [
          Gap(AppLayout.getHeight(40)),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: AppLayout.getHeight(86),
                width: AppLayout.getHeight(86),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(AppLayout.getHeight(10)),
                  image: DecorationImage(image: AssetImage('assets/logo1.png')),
                ),
              ),
              Gap(AppLayout.getHeight(10)),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'Book Tickets',
                    style: Styles.headLineStyle1,
                  ),
                  Gap(AppLayout.getHeight(2)),
                  Text(
                    'New-York',
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: Colors.grey.shade500),
                  ),
                  Gap(AppLayout.getHeight(8)),
                  Container(
                      decoration: BoxDecoration(
                        borderRadius:
                            BorderRadius.circular(AppLayout.getHeight(100)),
                        color: const Color(0xFFFEF4F3),
                      ),
                      padding: EdgeInsets.symmetric(
                          vertical: AppLayout.getHeight(3),
                          horizontal: AppLayout.getHeight(3)),
                      child: Row(
                        children: [
                          Container(
                            padding: EdgeInsets.all(3),
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: const Color(0xFF526799),
                            ),
                            child: const Icon(
                              FluentSystemIcons.ic_fluent_shield_filled,
                              color: Colors.white,
                              size: 15,
                            ),
                          ),
                          Gap(AppLayout.getHeight(5)),
                          const Text(
                            'Premium Status',
                            style: TextStyle(
                                color: Color(0xFF526799),
                                fontWeight: FontWeight.w600),
                          ),
                          Gap(AppLayout.getHeight(5)),
                        ],
                      )),
                ],
              ),
              const Spacer(),
              Column(
                children: [
                  InkWell(
                      onTap: () {
                        print('You are tapped');
                      },
                      child: Text(
                        "Edite",
                        style: Styles.textStyle.copyWith(
                            color: Styles.primayColor,
                            fontWeight: FontWeight.w300),
                      ))
                ],
              )
            ],
          ),
          Gap(AppLayout.getHeight(8)),
          Divider(
            color: Colors.grey.shade300,
          ),
          Gap(AppLayout.getHeight(8)),
          Stack(
            children: [
              Container(
                height: AppLayout.getHeight(90),
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Styles.primayColor,
                  borderRadius: BorderRadius.circular(AppLayout.getHeight(18)),
                ),
              ),
              Positioned(
                right: -45,
                top: -40,
                child: Container(
                  padding: EdgeInsets.all(AppLayout.getHeight(30)),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(color: Colors.pink, width: 18),
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: AppLayout.getHeight(25),vertical: AppLayout.getHeight(20)),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      child: Icon(
                        FluentSystemIcons.ic_fluent_lightbulb_filament_filled,
                        color: Styles.primayColor,
                        size: 27,
                      ),
                      maxRadius: 25,
                      backgroundColor: Colors.white,
                    ),
                    Gap(AppLayout.getHeight(12)),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          "You\'v flights",
                          style: Styles.headLineStyle2.copyWith(
                              fontWeight: FontWeight.bold, color: Colors.white),
                        ),
                        Text(
                          "You have 93 flights in year",
                          style: Styles.headLineStyle2.copyWith(
                              fontWeight: FontWeight.w500, color: Colors.white.withOpacity(0.9),fontSize: 16),
                        ),
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
          Gap(AppLayout.getHeight(25)),
          Text('Accumulated miles',style: Styles.headLineStyle2,),
          Gap(AppLayout.getHeight(20)),
          Container(
            padding: EdgeInsets.symmetric(horizontal: AppLayout.getWidth(15)),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(AppLayout.getWidth(18)),
              color: Styles.bgColor,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.shade200,
                  spreadRadius: 1,
                  blurRadius: 1,
                )
              ]
            ),
            child: Column(
              children: [
                Gap(AppLayout.getHeight(15)),
                Text('169502',style: TextStyle(
                  fontSize: 42,
                  color: Styles.textColor,
                  fontWeight: FontWeight.w600
                ),),
                Gap(AppLayout.getHeight(20)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Miles accured',style: Styles.headLineStyle4.copyWith(fontSize: 16),),
                    Text('30 October 2022',style: Styles.headLineStyle4.copyWith(fontSize: 16),),
                  ],
                ),
                Gap(AppLayout.getHeight(4)),
                Divider(color: Colors.grey.shade300,),
                Gap(AppLayout.getHeight(4)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    AppColumnLayout(firstTxt: '23 042',
                      alignment: CrossAxisAlignment.start,
                      secondTxt: 'Miles',isColor: false,),
                    AppColumnLayout(firstTxt: 'Airlien CO',
                      alignment: CrossAxisAlignment.end,
                      secondTxt: 'Received form',isColor: false,),
                  ],
                ),
                Gap(AppLayout.getHeight(12)),
                const AppLayoutBuilderWidegt(section: 12, isColor: false,),
                Gap(AppLayout.getHeight(12)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    AppColumnLayout(firstTxt: '25',
                      alignment: CrossAxisAlignment.start,
                      secondTxt: 'Miles',isColor: false,),
                    AppColumnLayout(firstTxt: "McDoanal\'s",
                      alignment: CrossAxisAlignment.end,
                      secondTxt: 'Received form',isColor: false,),
                  ],
                ),
                Gap(AppLayout.getHeight(12)),
                const AppLayoutBuilderWidegt(section: 12, isColor: false,),
                Gap(AppLayout.getHeight(12)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    AppColumnLayout(firstTxt: '25 340',
                      alignment: CrossAxisAlignment.start,
                      secondTxt: 'Miles',isColor: false,),
                    AppColumnLayout(firstTxt: "Exuma",
                      alignment: CrossAxisAlignment.end,
                      secondTxt: 'Received form',isColor: false,),
                  ],
                ),
              ],
            ),
          ),
          Gap(AppLayout.getHeight(25)),
          InkWell(
            onTap: ()=> print('Your tapped'),
            child: Center(
              child: Text('How to get more miles',style: Styles.textStyle.copyWith(
                color: Styles.primayColor,
                fontWeight: FontWeight.w500
              ),),
            ),
          ),
          Gap(AppLayout.getHeight(25)),
        ],
      ),
    );
  }
}
