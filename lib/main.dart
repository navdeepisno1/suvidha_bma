import 'package:business_finance_management/screens/home/home.dart';
import 'package:business_finance_management/utils/constants/app_colors/app_colors.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: kColorWhite,
        scaffoldBackgroundColor: kColorWhite,
      ),
      home: HomeScreen(),
    );
  }
}
