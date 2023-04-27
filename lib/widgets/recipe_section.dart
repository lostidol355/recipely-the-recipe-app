import 'package:cfc_dang_flutter_day3_recipe_app/utils/text_style_utils.dart';
import 'package:flutter/material.dart';

class RecipeSection extends StatelessWidget {
  final List<String> textList;
  final String title;


  const RecipeSection({super.key, required this.title, required this.textList});

  @override
  Widget build(BuildContext context) {
   
    return Column(
      children: [
        Column(
            children: List.generate(textList.length + 1, (index) {
          if (index == 0) {
            return Text(
              "•  $title",
              style: TextStyleUtils.headingStyle,
            );
          }

          return Padding(
            padding: const EdgeInsets.only(left: 18.0),
            child: Align(
              alignment: Alignment.topLeft,
              child: Text(
                "• ${textList[index - 1]}",
                style: TextStyleUtils.subHeadingStyle,
              ),
            ),
          );
        })),
      ],
    );
  }
}
