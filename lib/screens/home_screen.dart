import 'package:cfc_dang_flutter_day3_recipe_app/widgets/headin_text.dart';
import 'package:cfc_dang_flutter_day3_recipe_app/widgets/recipe_box.dart';
import 'package:flutter/material.dart';

import '../widgets/long_box.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Scrollable Container

          ListView(
            children: [
              SizedBox(
                height: 50,
              ),
              HeadingText(
                title: "Food Recipes",
                subtitle:
                    "Lets find out the best recipes from all over the world",
              ),
              LongBox(),
              SizedBox(
                height: 10,
              ),
              HeadingText(
                title: "Breakfast Recipes",
                subtitle: "All happiness depends on a leisurely breakfast",
              ),
              Wrap(
                children: List.generate(6, (index) => RecipeBox()),
              )
            ],
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
