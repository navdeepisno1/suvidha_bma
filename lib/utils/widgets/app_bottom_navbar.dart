import 'package:business_finance_management/utils/constants/app_colors/app_colors.dart';
import 'package:business_finance_management/utils/constants/values/app_constants.dart';
import 'package:flutter/material.dart';

class AppBottomNavbar extends StatelessWidget {
  const AppBottomNavbar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const double height = 100;
    const double radius = 32;
    return Container(
      height: height,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(kBorderRadius),
          topRight: Radius.circular(kBorderRadius),
        ),
      ),
      child: Stack(
        children: [
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              color: kColorSecondary,
              width: MediaQuery.of(context).size.width,
              height: height / 4,
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: (MediaQuery.of(context).size.width - 75) * 0.5,
                  padding: EdgeInsets.symmetric(
                      horizontal: kAppPadding, vertical: kAppPadding / 5),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(kBorderRadius),
                      topRight: Radius.circular(kBorderRadius),
                    ),
                    color: kColorSecondary,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      IconButton(
                        icon: Icon(Icons.home_outlined),
                        onPressed: () {},
                      ),
                      IconButton(
                        icon: Icon(
                          Icons.swap_horiz,
                          color: kColorGrey,
                        ),
                        onPressed: () {},
                      ),
                    ],
                  ),
                ),
                Container(
                  width: (MediaQuery.of(context).size.width - 72) * 0.5,
                  padding: EdgeInsets.symmetric(
                      horizontal: kAppPadding, vertical: kAppPadding / 5),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(kBorderRadius),
                      topRight: Radius.circular(kBorderRadius),
                    ),
                    color: kColorSecondary,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      IconButton(
                        icon: Icon(
                          Icons.search,
                          color: kColorGrey,
                        ),
                        onPressed: () {},
                      ),
                      IconButton(
                        icon: Icon(
                          Icons.account_circle_outlined,
                          color: kColorGrey,
                        ),
                        onPressed: () {},
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            left: 0,
            right: 0,
            bottom: 8,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  padding: EdgeInsets.all(8),
                  child: CircleAvatar(
                    radius: radius,
                    backgroundColor: kColorPrimary,
                    child: Icon(
                      Icons.add,
                      color: kColorWhite,
                    ),
                  ),
                  decoration: BoxDecoration(
                    color: kColorWhite,
                    borderRadius: BorderRadius.circular(100),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
