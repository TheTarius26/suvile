import 'package:flutter/material.dart';
import 'package:suvile/common/constant.dart';

class NeedAttention extends StatelessWidget {
  const NeedAttention({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [header(context), list()],
    );
  }

  Padding list() {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: kPadding / 2),
      child: GridView.builder(
        shrinkWrap: true,
        itemCount: 3,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          crossAxisSpacing: kPadding / 2,
        ),
        itemBuilder: (context, index) => listItem(context),
      ),
    );
  }

  InkWell listItem(BuildContext context) {
    final notification = Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Container(
          height: 10,
          width: 10,
          decoration: const BoxDecoration(
            color: kNotificationMed,
            shape: BoxShape.circle,
          ),
        )
      ],
    );

    final textStyle =
        Theme.of(context).textTheme.bodyText1?.copyWith(color: Colors.white);

    final text = Text(
      'Lorem ipsum dolor sit amet, consectetur adipiscing Lorem ipsum dolor sit amet, consectetur adipiscing',
      overflow: TextOverflow.ellipsis,
      maxLines: 4,
      style: textStyle,
    );

    return InkWell(
      onTap: () {},
      child: Container(
        height: 100,
        padding: const EdgeInsets.all(kPadding / 2),
        decoration: BoxDecoration(
          color: kPrimary,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Column(children: [notification, text]),
      ),
    );
  }

  Row header(BuildContext context) {
    final titleStyle = Theme.of(context)
        .textTheme
        .subtitle1
        ?.copyWith(fontWeight: FontWeight.bold, color: Colors.white);

    final titleWithIcon = Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Text("Need Attention", style: titleStyle),
        const Icon(Icons.warning, color: kNotificationMed),
      ],
    );

    final moreTextStyle =
        Theme.of(context).textTheme.bodyText1?.copyWith(color: Colors.white);

    final moreTextButton = TextButton(
      onPressed: () {},
      child: Text('more...', style: moreTextStyle),
    );

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [titleWithIcon, moreTextButton],
    );
  }
}
