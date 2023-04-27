import 'package:cfc_dang_flutter_day3_recipe_app/widgets/headin_text.dart';
import 'package:flutter/material.dart';

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
                    " Lets find out the best recipes from all over the world",
              )
            ],
          )
          // Gear Icon
        ],
      ),
    );
  }
}
