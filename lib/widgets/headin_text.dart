import 'package:flutter/material.dart';

class HeadingText extends StatelessWidget {
  final String title;
  final String subtitle;
  const HeadingText({super.key, required this.title, required this.subtitle});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 15.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
          ),
          Text(
            subtitle,
            style: TextStyle(fontSize: 20),
          )
        ],
      ),
    );
  }
}
