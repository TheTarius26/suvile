import 'package:flutter/material.dart';
import 'package:suvile/common/constant.dart';
import 'package:suvile/screens/home/widgets/home_app_bar.dart';
import 'package:suvile/screens/home/widgets/need_attention.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const HomeAppBar(),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(kPadding),
        child: Column(
          children: const [
            NeedAttention(),
          ],
        ),
      ),
    );
  }
}
