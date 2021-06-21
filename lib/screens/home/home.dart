import 'package:business_finance_management/screens/details/details.dart';
import 'package:business_finance_management/screens/home/utils/widgets/custom_tab.dart';
import 'package:business_finance_management/screens/home/utils/widgets/heading_with_subheading.dart';
import 'package:business_finance_management/utils/constants/app_colors/app_colors.dart';
import 'package:business_finance_management/utils/constants/values/app_constants.dart';
import 'package:business_finance_management/utils/widgets/app_bottom_navbar.dart';
import 'package:business_finance_management/utils/widgets/custom_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
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
                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: 350,
                      margin: EdgeInsets.symmetric(
                          horizontal: kAppPadding, vertical: 12),
                      child: Stack(
                        children: [
                          Positioned(
                            bottom: 0,
                            left: 0,
                            right: 0,
                            child: Container(
                              width: MediaQuery.of(context).size.width,
                              height: 250,
                              decoration: BoxDecoration(
                                color: kColorTertiary,
                                borderRadius: BorderRadius.circular(16),
                              ),
                            ),
                          ),
                          Positioned(
                            left: 0,
                            right: 0,
                            bottom: 56,
                            child: Container(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Image.asset(
                                    'assets/images/bg_2.png',
                                    width: MediaQuery.of(context).size.width *
                                        0.55,
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Positioned(
                            left: 0,
                            right: 0,
                            bottom: 32,
                            child: Container(
                              margin:
                                  EdgeInsets.symmetric(horizontal: kAppPadding),
                              decoration: BoxDecoration(
                                color: kColorWhite,
                                borderRadius:
                                    BorderRadius.circular(kBorderRadius),
                              ),
                              child: ListTile(
                                title: CustomText(
                                  'Balance',
                                  fontWeight: FontWeight.bold,
                                ),
                                subtitle: CustomText(
                                  'Rs. 12,100',
                                ),
                                trailing: GestureDetector(
                                  onTap: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                DetailsScreen()));
                                  },
                                  child: CircleAvatar(
                                    radius: 32,
                                    backgroundColor: kColorSecondary,
                                    child: Icon(
                                      Icons.arrow_forward_ios_rounded,
                                      color: kColorPrimary,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    Column(
                      children: List.generate(
                        10,
                        (index) => Container(
                          margin: EdgeInsets.symmetric(vertical: 12),
                          child: ListTile(
                            contentPadding:
                                EdgeInsets.symmetric(horizontal: kAppPadding),
                            leading: Image.asset(
                              'assets/icons/icon_send.png',
                            ),
                            title: CustomText(
                              'Title',
                              fontWeight: FontWeight.w700,
                            ),
                            subtitle: CustomText('Subtitle'),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 56,
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
