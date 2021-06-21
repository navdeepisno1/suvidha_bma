import 'package:business_finance_management/utils/constants/app_colors/app_colors.dart';
import 'package:business_finance_management/utils/constants/values/app_constants.dart';
import 'package:business_finance_management/utils/widgets/custom_text.dart';
import 'package:flutter/material.dart';

class HeadingWithSubheading extends StatelessWidget {
  const HeadingWithSubheading({key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: kAppPadding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: CircleAvatar(
                  radius: 24,
                  backgroundColor: kColorSecondary,
                  child: Icon(
                    Icons.arrow_back_ios_rounded,
                    color: kColorPrimary,
                  ),
                ),
              ),
              CustomText(
                'SUVIDHA',
                fontSize: 32,
                fontWeight: FontWeight.bold,
                padding:
                    EdgeInsets.symmetric(horizontal: kAppPadding, vertical: 12),
              ),
              /*
              Padding(
                padding: const EdgeInsets.all(24),
                child: Icon(
                  Icons.menu_rounded,
                  size: 32,
                ),
              )
               */
            ],
          ),
          /*
          CustomText(
            'Business Finance Management',
            fontSize: 18,
            color: kColorGrey,
            fontWeight: FontWeight.bold,
            padding: EdgeInsets.symmetric(horizontal: kAppPadding, vertical: 0),
          ),
           */
        ],
      ),
    );
  }
}
