import 'package:flutter/material.dart';

class LongBox extends StatelessWidget {
  const LongBox({super.key});

  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.of(context).size.height;
    var w = MediaQuery.of(context).size.width;

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: h * 0.2,
        decoration: BoxDecoration(
            color: Colors.orange,
            borderRadius: BorderRadius.circular(10),
            image: DecorationImage(
                image: AssetImage(
                  "assets/images/food1.jpg",
                ),
                fit: BoxFit.cover),
            border: Border.all(color: Colors.red, width: 3)),
      ),
    );
  }
}
