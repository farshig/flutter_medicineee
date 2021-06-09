import 'package:flutter/material.dart';
import 'package:flutter_medic/ui/pages/splas_Screen/splash_scree.dart';
import 'package:flutter_medic/ui/them/them.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(primaryColor: greenColor),
      home: SplashScreen(),
    );
  }
}
