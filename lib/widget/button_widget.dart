import 'package:calculator/provider/Calculator_Provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Button_Widget extends StatelessWidget {
  final String name;
  final Color color;
  final TextStyle textstyle;
  // final VoidCallback ontap;

  const Button_Widget({
    super.key,
    required this.name,
    required this.color,
    required this.textstyle,
    // required this.ontap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Provider.of<Calculator_Provider>(context, listen: false)
            .setTextValue(name);
        print(name);
      },
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(50),
          child: Container(
            height: 100,
            width: 100,
            color: color,
            child: Center(
              child: Text(
                name,
                style: textstyle,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
