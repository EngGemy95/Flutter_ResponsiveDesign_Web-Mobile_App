import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../constants.dart';

class Goals extends StatelessWidget {
  const Goals({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: kDefaultPadding),
          child: Text(
            'Goals',
            style: Theme.of(context).textTheme.subtitle2,
          ),
        ),
        buildGoalsRow('Planning Stage'),
        buildGoalsRow('Development'),
        buildGoalsRow('Execution phase'),
        buildGoalsRow('New way of living'),
      ],
    );
  }

  Widget buildGoalsRow(String text) {
    return Padding(
      padding: const EdgeInsets.only(bottom: kDefaultPadding/2),
      child: Row(
          children: [
            SvgPicture.asset('assets/icons/check.svg'),
            SizedBox(
              width: kDefaultPadding / 2,
            ),
            Text(text),
          ],
        ),
    );
  }
}
