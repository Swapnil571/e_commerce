import 'package:flutter/material.dart';

import 'package:test/screens/splash_screen/splash_screen.dart';
import 'package:test/utils/config.dart';
import 'package:test/utils/utils.dart';

void main() async {
  await Config().init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    Utils.getDeviceDimensions(context);
    
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const SplashScreen(),
    );
  }
}
