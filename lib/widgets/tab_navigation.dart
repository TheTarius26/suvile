import 'package:flutter/material.dart';
import 'package:suvile/common/constant.dart';

class TabNavigation extends StatelessWidget {
  const TabNavigation({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Directionality tabButton({
      required IconData icon,
      required String label,
      required VoidCallback onPress,
      bool isActive = false,
    }) {
      TextStyle? textStyle = Theme.of(context).textTheme.subtitle1;
      return Directionality(
        textDirection: TextDirection.rtl,
        child: ElevatedButton.icon(
          onPressed: () {},
          icon: Icon(icon, color: Colors.black),
          label: Text(
            label,
            style: Theme.of(context)
                .textTheme
                .subtitle1
                ?.copyWith(fontWeight: FontWeight.bold),
          ),
          style: ElevatedButton.styleFrom(
            padding: const EdgeInsets.all(kPadding / 2),
            primary: isActive ? kPrimary : kPrimary.withOpacity(0.9),
            textStyle: isActive
                ? textStyle?.copyWith(fontWeight: FontWeight.bold)
                : textStyle?.copyWith(color: Colors.black.withOpacity(0.8)),
            elevation: isActive ? 8.0 : 0,
          ),
        ),
      );
    }

    return Padding(
      padding: const EdgeInsets.all(kPadding),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          tabButton(
            icon: Icons.home,
            label: 'Home',
            isActive: true,
            onPress: () {},
          ),
          tabButton(
            icon: Icons.home,
            label: 'Home',
            isActive: false,
            onPress: () {},
          ),
          tabButton(
            icon: Icons.home,
            label: 'Home',
            isActive: false,
            onPress: () {},
          ),
        ],
      ),
    );
  }
}
