import 'package:cfc_dang_flutter_day3_recipe_app/utils/text_style_utils.dart';
import 'package:cfc_dang_flutter_day3_recipe_app/widgets/long_box.dart';
import 'package:cfc_dang_flutter_day3_recipe_app/widgets/recipe_section.dart';
import 'package:flutter/material.dart';

class RecipeDetail extends StatelessWidget {
  final Map recipe;
  const RecipeDetail({super.key, required this.recipe});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            ListView(
              children: [
                SizedBox(
                  height: 60,
                ),
                Text(
                  recipe['recipeTitle'],
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                  ),
                ),
                Row(
                  children: [
                    Icon(
                      Icons.food_bank,
                      size: 40,
                    ),
                    Text(
                      "Cooking Time",
                      style: TextStyleUtils.headingStyle,
                    )
                  ],
                ),
                Text(
                  recipe['cookingTime'],
                  style: TextStyleUtils.subHeadingStyle,
                ),
                Row(
                  children: [
                    Icon(
                      Icons.timer,
                      size: 40,
                    ),
                    Text(
                      "Reading Time",
                      style: TextStyleUtils.headingStyle,
                    )
                  ],
                ),
                Text(recipe['readingTime'],
                    style: TextStyleUtils.subHeadingStyle),
                LongBox(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    CircleAvatar(
                      child: IconButton(
                          onPressed: () {}, icon: Icon(Icons.favorite_outline)),
                    ),
                    CircleAvatar(
                        child: IconButton(
                            onPressed: () {}, icon: Icon(Icons.share))),
                    CircleAvatar(
                        child: IconButton(
                            onPressed: () {}, icon: Icon(Icons.bug_report))),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: RecipeSection(
                    title: "Ingredients",
                    textList: recipe['ingredients'],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: RecipeSection(
                    title: "Directions",
                    textList: recipe['directions'],
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: InkWell(
                onTap: () {},
                child: Container(
                  height: 50,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(25),
                  ),
                  child: Positioned(
                      top: 10,
                      child: IconButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          icon: Icon(Icons.arrow_back_ios, size: 40))),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
