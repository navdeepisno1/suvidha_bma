import 'dart:math';

import 'package:business_finance_management/screens/details/utils/widgets/custom_tab.dart';
import 'package:business_finance_management/screens/details/utils/widgets/heading_with_subheading.dart';
import 'package:business_finance_management/utils/constants/app_colors/app_colors.dart';
import 'package:business_finance_management/utils/constants/values/app_constants.dart';
import 'package:business_finance_management/utils/widgets/app_bottom_navbar.dart';
import 'package:business_finance_management/utils/widgets/custom_text.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DetailsScreen extends StatefulWidget {
  const DetailsScreen({key}) : super(key: key);

  @override
  _DetailsScreenState createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          child: Stack(
            children: [
              Container(
                child: ListView(
                  children: [
                    HeadingWithSubheading(),
                    CustomTab(),
                    Center(
                      child: CustomText(
                        'Rs. 12,100',
                        fontSize: 24,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.check,
                            color: kColorGrey,
                          ),
                          CustomText(
                            '8.4% increase',
                            fontWeight: FontWeight.bold,
                            color: kColorGrey,
                          ),
                        ],
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(right: kAppPadding),
                      height: 250,
                      child: BarChart(
                        BarChartData(
                          borderData: FlBorderData(
                            show: true,
                            border: Border(
                              bottom: BorderSide(color: kColorGrey, width: 2),
                            ),
                          ),
                          barGroups: List.generate(
                            6,
                            (index) => BarChartGroupData(
                              x: index + 17,
                              barRods: [
                                BarChartRodData(
                                    y: Random().nextInt(10).toDouble() + 5,
                                    width: 12,
                                    colors: [kColorPrimary]),
                                BarChartRodData(
                                    y: Random().nextInt(10).toDouble() + 5,
                                    width: 12,
                                    colors: [kColorTertiary]),
                              ],
                            ),
                          ),
                          maxY: 15,
                          minY: 0,
                        ),
                        swapAnimationDuration: Duration(milliseconds: 150),
                        swapAnimationCurve: Curves.linear,
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(
                        horizontal: kAppPadding,
                        vertical: kAppPadding / 2,
                      ),
                      height: 250,
                      decoration: BoxDecoration(
                        color: kColorTertiary2,
                        image: DecorationImage(
                          image: AssetImage('assets/images/bg_3.png'),
                          fit: BoxFit.cover,
                        ),
                        borderRadius: BorderRadius.circular(kBorderRadius),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          CustomText(
                            'Tips and tricks for business',
                            fontSize: 24,
                            fontWeight: FontWeight.w700,
                            color: kColorWhite,
                          ),
                          Container(
                            margin: EdgeInsets.symmetric(
                              horizontal: kAppPadding,
                            ),
                            padding: EdgeInsets.symmetric(vertical: 8),
                            decoration: BoxDecoration(
                              color: kColorWhite,
                              borderRadius:
                                  BorderRadius.circular(kBorderRadius),
                              boxShadow: [
                                BoxShadow(
                                  color: kColorBlack.withOpacity(0.1),
                                  blurRadius: 12,
                                ),
                              ],
                            ),
                            child: CustomText(
                              'Click Me !!',
                              color: kColorGrey,
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 84,
                    ),
                  ],
                ),
              ),
              Positioned(
                child: AppBottomNavbar(),
                bottom: 0,
                left: 0,
                right: 0,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
