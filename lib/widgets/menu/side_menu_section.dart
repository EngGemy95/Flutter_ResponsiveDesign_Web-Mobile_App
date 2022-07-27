import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:real_estate_app/constants.dart';
import 'Goals.dart';
import 'contact_info.dart';
import 'logo.dart';

class SideMenuSection extends StatelessWidget {
  const SideMenuSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SafeArea(
        child: Column(
          children: [
            Logo(),
            Expanded(
                child: SingleChildScrollView(
              padding: EdgeInsets.all(kDefaultPadding),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ContactInfo(),
                  Divider(),
                  Goals(),
                  Divider(),
                  TextButton(
                    onPressed: () {},
                    child: FittedBox(
                      child: Row(
                        children: [
                          SvgPicture.asset('assets/icons/download.svg'),
                          SizedBox(
                            width: kDefaultPadding / 2,
                          ),
                          Text(
                            'Download Data',
                            style: Theme.of(context).textTheme.bodyText1,
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(kDefaultPadding),
                    color: kSecondaryColor,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Spacer(),
                        buildSocialMediaIcon('linkedin.svg'),
                        buildSocialMediaIcon('github.svg'),
                        buildSocialMediaIcon('twitter.svg'),
                        buildSocialMediaIcon('dribble.svg'),
                        Spacer(),
                      ],
                    ),
                  ),
                ],
              ),
            )),
          ],
        ),
      ),
    );
  }

  Widget buildSocialMediaIcon(String iconFileName) {
    return IconButton(
      onPressed: () {},
      icon: SvgPicture.asset('assets/icons/$iconFileName'),
    );
  }
}
