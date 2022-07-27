import 'package:flutter/material.dart';
import 'package:real_estate_app/constants.dart';
import 'package:real_estate_app/responsive.dart';

class IconInfo extends StatelessWidget {
  const IconInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: Responsive.isMobile(context)?  EdgeInsets.all(kDefaultPadding * 1): EdgeInsets.all(kDefaultPadding * 3),
      child: Responsive.isMobile(context)
          ? Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                        child: buildIconInfo(context, 'Clients', '67+',
                            Icons.supervisor_account)),
                    Expanded(
                        child: buildIconInfo(
                            context, 'Projects', '139+', Icons.location_on)),
                  ],
                ),
                SizedBox(
                  height: kDefaultPadding * 3,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                        child: buildIconInfo(
                            context, 'Countries', '30+', Icons.public)),
                    Expanded(
                        child: buildIconInfo(
                            context, 'Stars', '13K+', Icons.star)),
                  ],
                ),
              ],
            )
          : Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                buildIconInfo(context, 'Clients', '67+', Icons.supervisor_account),
                buildIconInfo(context, 'Projects', '139+', Icons.location_on),
                buildIconInfo(context, 'Countries', '30+', Icons.public),
                buildIconInfo(context, 'Stars', '13K+', Icons.star),
              ],
            ),
    );
  }

  Column buildIconInfo(
      BuildContext context, String text, String label, IconData icon) {
    return Column(
      children: [
        Icon(
          icon,
          color: Colors.white,
          size: 50,
        ),
        SizedBox(
          height: 5,
        ),
        Text(
          label,
          style: Theme.of(context)
              .textTheme
              .headline6!
              .copyWith(color: kPrimaryColor, fontSize: 30),
        ),
        Text(
          text,
          style: Theme.of(context).textTheme.subtitle2,
        ),
      ],
    );
  }
}
