import 'dart:async';

import 'package:flutter/material.dart';
import 'package:test/constants/asset_constants.dart';
import 'package:test/screens/tabscreen/tabs_screen.dart';
import 'package:test/utils/utils.dart';

import 'package:lottie/lottie.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    navigateToTabScreen();
  }

  navigateToTabScreen() {
    Future.delayed(
      Duration(seconds: 2),
      () => Navigator.pushAndRemoveUntil(
        context,
        MaterialPageRoute(
          builder: (context) => TabsScreen(),
        ),
        (route) => false,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SizedBox(
          height: Utils.screenWidth * 0.8,
          width: Utils.screenWidth * 0.8,
          child: Lottie.asset(AssetConstants.loading),
        ),
      ),
    );
  }
}
