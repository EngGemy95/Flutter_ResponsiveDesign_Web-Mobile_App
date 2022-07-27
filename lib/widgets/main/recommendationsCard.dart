import 'package:flutter/material.dart';
import 'package:real_estate_app/models/recommendation.dart';
import 'package:real_estate_app/responsive.dart';
import '../../constants.dart';

class RecommendationsCard extends StatelessWidget {
  const RecommendationsCard({
    Key? key,
    required this.recommendations,
  }) : super(key: key);

  final Recommendation recommendations;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(kDefaultPadding),
      color: kSecondaryColor,
      width: Responsive.isMobile(context)
          ? MediaQuery.of(context).size.width - kDefaultPadding *2
          : 400,
      child: Column(
        children: [
          ListTile(
            leading: CircleAvatar(
              radius: 30,
              backgroundImage: AssetImage(recommendations.image!),
            ),
            title: Text(recommendations.name!,
                style: Theme.of(context).textTheme.subtitle2),
            subtitle: Text(
              recommendations.source!,
              style: Theme.of(context).textTheme.bodyText1,
            ),
          ),
          SizedBox(
            height: kDefaultPadding,
          ),
          Text(
            recommendations.text!,
            style: TextStyle(height: 1.5),
            overflow: TextOverflow.ellipsis,
            maxLines: 4,
          ),
        ],
      ),
    );
  }
}
