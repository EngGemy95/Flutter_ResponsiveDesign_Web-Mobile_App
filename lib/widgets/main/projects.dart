import 'package:flutter/material.dart';
import 'package:real_estate_app/constants.dart';
import 'package:real_estate_app/models/projects.dart';
import 'package:real_estate_app/responsive.dart';

import 'project_card.dart';

class Projects extends StatelessWidget {
  const Projects({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Our Projects',
          style: Theme.of(context).textTheme.headline6,
        ),
        SizedBox(
          height: kDefaultPadding,
        ),
        Responsive(
          desktop: buildGridView(
            demoProjects.length,
            3,
            0.7,
            (context, index) {
              return ProjectCard(
                project: demoProjects[index],
              );
            },
          ),
          mobileLarg: buildGridView(
            demoProjects.length,
            2,
            0.7,
            (context, index) {
              return ProjectCard(
                project: demoProjects[index],
              );
            },
          ),
          tablet: buildGridView(
            demoProjects.length,
            MediaQuery.of(context).size.width <900 ? 2:3,
            0.7,
            (context, index) {
              return ProjectCard(
                project: demoProjects[index],
              );
            },
          ),
          mobile: buildGridView(
            demoProjects.length,
            1,
            0.7,
            (context, index) {
              return ProjectCard(
                project: demoProjects[index],
              );
            },
          ),
        ),
      ],
    );
  }

  GridView buildGridView(int itemCount, int crossAxisCount, double aspectRatio,
      IndexedWidgetBuilder itemBuilder) {
    return GridView.builder(
        controller: ScrollController(),
        physics: NeverScrollableScrollPhysics(),
        itemCount: itemCount,
        shrinkWrap: true,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: crossAxisCount,
            crossAxisSpacing: kDefaultPadding,
            mainAxisSpacing: kDefaultPadding,
            childAspectRatio: aspectRatio
        ),
        itemBuilder: itemBuilder
    );
  }
}
