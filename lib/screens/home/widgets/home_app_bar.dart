import 'package:flutter/material.dart';
import 'package:suvile/common/constant.dart';

class HomeAppBar extends StatelessWidget with PreferredSizeWidget {
  @override
  final Size preferredSize;

  const HomeAppBar({Key? key})
      : preferredSize = const Size.fromHeight(100),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(kPadding / 2),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(flex: 1, child: menuButton()),
          const SizedBox(width: kPadding),
          Expanded(flex: 6, child: searchField(context)),
        ],
      ),
    );
  }

  Container searchField(BuildContext context) {
    final hintStyle = Theme.of(context)
        .textTheme
        .subtitle1
        ?.copyWith(color: Colors.white.withOpacity(0.5));

    final inputDecoration = InputDecoration(
      border: InputBorder.none,
      hintText: 'Search...',
      hintStyle: hintStyle,
      suffixIcon: const Icon(
        Icons.search,
        color: Colors.white,
      ),
    );

    final textStyle =
        Theme.of(context).textTheme.subtitle1?.copyWith(color: Colors.white);

    final boxDecoration = BoxDecoration(
      color: kPrimary.withOpacity(0.5),
      borderRadius: BorderRadius.circular(50),
    );

    return Container(
      height: 50,
      padding: const EdgeInsets.symmetric(horizontal: kPadding),
      decoration: boxDecoration,
      child: TextField(
        decoration: inputDecoration,
        style: textStyle,
      ),
    );
  }

  InkWell menuButton() {
    const decoration = BoxDecoration(
      color: kPrimary,
      shape: BoxShape.circle,
    );

    return InkWell(
      onTap: () {},
      borderRadius: BorderRadius.circular(50),
      child: Container(
        width: 50,
        height: 50,
        decoration: decoration,
        child: const Icon(Icons.menu, color: Colors.white),
      ),
    );
  }
}
