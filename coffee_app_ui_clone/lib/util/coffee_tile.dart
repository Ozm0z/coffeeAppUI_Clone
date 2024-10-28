import 'package:coffee_app_ui_clone/pages/home_page.dart';
import 'package:coffee_app_ui_clone/product/image_paths.dart';
import 'package:flutter/material.dart';

class CoffeeTile extends StatelessWidget {
  const CoffeeTile({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: PaddingUtility.pagePaddingCard,
      child: Container(
        padding: PaddingUtility.pagePaddingAll,
        width: 200,
        decoration: BoxDecoration(
          borderRadius: RadiusOfBorders().circular12,
          color: ColorsUtility.cardColor,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //image
            ClipRRect(
              borderRadius: RadiusOfBorders().circular12,
              child: Image.asset(ImagePaths().lattePng),
            ),

            //name
            Padding(
              padding: PaddingUtility.pagePaddingVertHoriz,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Latte',
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                  Text(
                    'With Almond Milk',
                    style: TextStyle(color: ColorsUtility.cardText),
                  ),
                ],
              ),
            ),

            Padding(
              padding: PaddingUtility.pagePaddingHorizontal.copyWith(left: 10, right: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text('\$4.00'),
                  Container(
                      padding: PaddingUtility.pagePaddingAll4,
                      decoration:
                          BoxDecoration(color: ColorsUtility.themeOrange, borderRadius: RadiusOfBorders().circular6),
                      child: const Icon(Icons.add)),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class RadiusOfBorders {
  final circular12 = BorderRadius.circular(12);
  final circular6 = BorderRadius.circular(6);
}
