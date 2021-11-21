import 'package:flutter/material.dart';
import 'package:suvile/common/constant.dart';
import 'package:suvile/common/theme/theme.dart';
import 'package:suvile/screens/home/home.dart';

void main() {
  runApp(const SuvileApp());
}

class SuvileApp extends StatelessWidget {
  const SuvileApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Suvile WMS',
      home: const HomeScreen(),
      theme: themeApp,
    );
  }
}
