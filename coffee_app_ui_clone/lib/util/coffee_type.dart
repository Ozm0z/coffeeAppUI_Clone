import 'package:coffee_app_ui_clone/pages/home_page.dart';
import 'package:flutter/material.dart';

class CoffeeType extends StatelessWidget {
  final String coffeType;
  const CoffeeType({super.key, required this.coffeType, required this.isSelected, required this.onTap});
  final bool isSelected;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: PaddingUtility.pagePaddingLeft,
        child: Text(
          coffeType,
          style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: isSelected ? ColorsUtility.themeOrange : ColorsUtility.cardText),
        ),
      ),
    );
  }
}
