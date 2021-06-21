import 'package:business_finance_management/utils/constants/app_colors/app_colors.dart';
import 'package:business_finance_management/utils/constants/values/app_constants.dart';
import 'package:business_finance_management/utils/widgets/custom_text.dart';
import 'package:flutter/material.dart';

class CustomTab extends StatelessWidget {
  const CustomTab({key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: kAppPadding, vertical: 12),
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
      decoration: BoxDecoration(
          color: kColorSecondary,
          borderRadius: BorderRadius.circular(kBorderRadius)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Expanded(
            child: Container(
              padding: EdgeInsets.symmetric(vertical: 8),
              decoration: BoxDecoration(
                color: kColorWhite,
                borderRadius: BorderRadius.circular(kBorderRadius),
                boxShadow: [
                  BoxShadow(
                    color: kColorBlack.withOpacity(0.1),
                    blurRadius: 12,
                  ),
                ],
              ),
              child: CustomText(
                'Daily',
                color: kColorBlack,
                fontSize: 18,
                fontWeight: FontWeight.bold,
                textAlign: TextAlign.center,
              ),
            ),
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.symmetric(vertical: 8),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
              ),
              child: CustomText(
                'Monthly',
                fontWeight: FontWeight.bold,
                textAlign: TextAlign.center,
                color: kColorGrey,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
