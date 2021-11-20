import 'package:flutter/material.dart';
import 'package:suvile/screens/home.dart';

void main() {
  runApp(const SuvileApp());
}

class SuvileApp extends StatelessWidget {
  const SuvileApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Suvile WMS',
      home: HomeScreen(),
    );
  }
}
