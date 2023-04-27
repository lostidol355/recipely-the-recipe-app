import 'package:flutter/material.dart';

class RecipeBox extends StatelessWidget {
  const RecipeBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Container(
              height: 200,
              width: 173,
              // decoration: BoxDecoration(border: Border.all()),
              child: Image(
                image: AssetImage(
                  "assets/images/food2.jpg",
                ),
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Container(
              height: 200,
              width: 173,
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.bottomCenter,
                      end: Alignment.topCenter,
                      colors: [
                    Colors.black.withOpacity(0.7),
                    Colors.white,
                  ])),
            ),
          ),
        ),
        Positioned(
          left: 10,
          bottom: 10,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                "1. Omelet Recipes",
                style: TextStyle(color: Colors.white),
              ),
              Row(
                children: [
                  Icon(
                    Icons.book,
                    color: Colors.white,
                  ),
                  Text(
                    "17 recipes",
                    style: TextStyle(color: Colors.white),
                  )
                ],
              )
            ],
          ),
        )
      ],
    );
  }
}
