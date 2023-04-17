import 'package:flutter/material.dart';
import 'package:grocery_app/style/color.dart';
import 'package:grocery_app/widgets/appbar.dart';

class DashboardScreen extends StatelessWidget{
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar:  AppBarLogo(location: "Bengaluru, India"),
      body: SafeArea(child: SizedBox(),),
    );
  }
}