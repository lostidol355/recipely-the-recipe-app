import 'package:cfc_dang_flutter_day3_recipe_app/screens/recipe_detail.dart';
import 'package:flutter/material.dart';

import '../utils/text_style_utils.dart';

class MenuItemBox extends StatelessWidget {
  const MenuItemBox({super.key});

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GestureDetector(
        onTap: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (_) => RecipeDetail()));
        },
        child: Material(
          borderRadius: BorderRadius.circular(10),
          elevation: 20,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: height * 0.18,
              decoration: BoxDecoration(
                // color: Colors.red,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                children: [
                  Expanded(
                      flex: 2,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Container(
                          height: height * 0.25,
                          child: Image(
                            image: AssetImage("assets/images/food4.jpg"),
                            fit: BoxFit.cover,
                          ),
                        ),
                      )),
                  Expanded(
                      flex: 4,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text(
                              "Easy Tea / Chai Recipe",
                              style: TextStyleUtils.headingStyle,
                            ),
                            Row(
                              children: [
                                Icon(Icons.food_bank),
                                Text("Cooking Time")
                              ],
                            ),
                            Text(" 20 minutes"),
                            Row(
                              children: [
                                Icon(Icons.timer),
                                Text("Reading Time")
                              ],
                            ),
                            Text(" 10 minutes")
                          ],
                        ),
                      ))
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
