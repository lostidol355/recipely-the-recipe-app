import 'package:flutter/material.dart';

class MenuItemBox extends StatelessWidget {
  const MenuItemBox({super.key});

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: height * 0.25,
        decoration: BoxDecoration(
          color: Colors.red,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Row(
          children: [
            Expanded(
                flex: 2,
                child: Container(
                  height: height * 0.25,
                  child: Image(
                    image: AssetImage("assets/images/food4.jpg"),
                    fit: BoxFit.cover,
                  ),
                )),
            Expanded(
                flex: 4,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Easy Tea / Chai Recipe"),
                    Row(
                      children: [Icon(Icons.food_bank), Text("Cooking Time")],
                    ),
                    Text(" 20 minutes"),
                    Row(
                      children: [Icon(Icons.timer), Text("Reading Time")],
                    ),
                    Text(" 10 minutes")
                  ],
                ))
          ],
        ),
      ),
    );
  }
}
