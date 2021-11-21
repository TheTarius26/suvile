import 'package:flutter/material.dart';
import 'package:suvile/screens/home/widgets/home_app_bar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: HomeAppBar(),
    );
  }
}
