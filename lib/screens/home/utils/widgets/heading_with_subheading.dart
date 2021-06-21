import 'package:business_finance_management/utils/constants/app_colors/app_colors.dart';
import 'package:business_finance_management/utils/constants/values/app_constants.dart';
import 'package:business_finance_management/utils/widgets/custom_text.dart';
import 'package:flutter/material.dart';

class HeadingWithSubheading extends StatelessWidget {
  const HeadingWithSubheading({key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CustomText(
                'SUVIDHA',
                fontSize: 32,
                fontWeight: FontWeight.bold,
                padding:
                    EdgeInsets.symmetric(horizontal: kAppPadding, vertical: 12),
              ),
              Padding(
                padding: const EdgeInsets.all(24),
                child: Icon(
                  Icons.menu_rounded,
                  size: 32,
                ),
              )
            ],
          ),
          CustomText(
            'Business Finance Management',
            fontSize: 18,
            color: kColorGrey,
            fontWeight: FontWeight.bold,
            padding: EdgeInsets.symmetric(horizontal: kAppPadding, vertical: 0),
          ),
        ],
      ),
    );
  }
}
