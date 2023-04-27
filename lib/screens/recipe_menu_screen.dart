import 'package:cfc_dang_flutter_day3_recipe_app/widgets/long_box.dart';
import 'package:flutter/material.dart';

import '../widgets/menu_item_box.dart';

class RecipeMenu extends StatelessWidget {
  final List recipe;

  const RecipeMenu({super.key, required this.recipe});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: Stack(
        children: [
          ListView(
              physics: const BouncingScrollPhysics(),
              children: List.generate(recipe.length + 1, (index) {
                if (index == 0) {
                  return Column(
                    children: [
                      SizedBox(
                        height: 60,
                      ),
                      LongBox(),
                    ],
                  );
                }

                return MenuItemBox(
                  recipe: recipe[index-1],

                );
              })),
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
      )),
    );
  }
}
