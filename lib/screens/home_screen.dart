import 'package:cfc_dang_flutter_day3_recipe_app/data/recipe_data.dart';
import 'package:cfc_dang_flutter_day3_recipe_app/widgets/headin_text.dart';
import 'package:cfc_dang_flutter_day3_recipe_app/widgets/home_screen_item.dart';
import 'package:cfc_dang_flutter_day3_recipe_app/widgets/recipe_box.dart';
import 'package:flutter/material.dart';

import '../widgets/long_box.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Widget homeFixedWidget() {
      return Column(
        children: [
          SizedBox(
            height: 50,
          ),
          HeadingText(
            title: "Food Recipes",
            subtitle: "Lets find out the best recipes from all over the world",
          ),
          LongBox(),
          SizedBox(
            height: 10,
          ),
        ],
      );
    }

    return Scaffold(
      body: Stack(
        children: [
          // Scrollable Container

          ListView(
            children: List.generate(recipesData.length + 1, (index) {
              if (index == 0) {
                return homeFixedWidget();
              } else {
                return HomeScreenItem(
                  headingText: recipesData[index - 1]['title'],
                  subHeadingText: recipesData[index - 1]['subtitle'],
                  recipeMenu: recipesData[index - 1]['recipeMenu'],
                );
              }
            }),
          ),

          Positioned(
              top: 20,
              child: IconButton(
                  onPressed: () {}, icon: Icon(Icons.settings, size: 40)))
          // Gear Icon
        ],
      ),
    );
  }
}
