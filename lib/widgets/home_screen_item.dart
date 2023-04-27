import 'package:cfc_dang_flutter_day3_recipe_app/widgets/recipe_box.dart';
import 'package:flutter/material.dart';

import 'headin_text.dart';

class HomeScreenItem extends StatelessWidget {
  final String headingText;
  final String subHeadingText;
  final List recipeMenu;
  const HomeScreenItem(
      {super.key,
      required this.headingText,
      required this.subHeadingText,
      required this.recipeMenu});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        HeadingText(
          title: headingText,
          subtitle: subHeadingText,
        ),
        Wrap(
          children: List.generate(
              recipeMenu.length,
              (index) => RecipeBox(
                    index: index + 1,
                    recipeMenuData: recipeMenu[index],
                  )),
        ),
      ],
    );
  }
}
