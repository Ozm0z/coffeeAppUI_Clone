import 'package:coffee_app_ui_clone/product/language/language_items.dart';
import 'package:coffee_app_ui_clone/util/coffee_tile.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsUtility.backGroundMain,
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              print('menüye bastın');
            },
            icon: const Icon(Icons.menu)),
        actions: [
          Padding(
            padding: PaddingUtility.pagePaddingRight,
            child: IconButton(
                onPressed: () {
                  print('adama bastın');
                },
                icon: const Icon(Icons.person_sharp)),
          )
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: PaddingUtility.pagePaddingHorizontal,
            child: Text(LanguageItems().mainTitle,
                style: GoogleFonts.bebasNeue(
                  textStyle: Theme.of(context).textTheme.displayLarge,
                )
                //Theme.of(context).textTheme.displaySmall,
                ),
          ),
          const SizedBox(height: 25),

          //SearchBar
          Padding(
            padding: PaddingUtility.pagePaddingHorizontal,
            child: TextField(
              decoration: InputDecoration(
                hintText: LanguageItems().homeSearchHint,
                prefixIcon: const Icon(Icons.search_outlined), //değişecek odakta turuncu olacak
                //prefixIconColor: ColorsUtility.themeOrange,
                enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: ColorsUtility.themeGreyShade600)), //tıklamadanki border
                focusedBorder: OutlineInputBorder(
                  //tıklayınca etrafına border atıyor
                  borderSide: BorderSide(color: ColorsUtility.themeGreyShade600),
                ),
              ),
            ),
          ),
          const SizedBox(height: 25),

          Container(
            height: 50,
            color: Colors.red,
          ),

          Expanded(
              child: ListView(
            scrollDirection: Axis.horizontal,
            children: const [CoffeeTile(), CoffeeTile(), CoffeeTile()],
          ))
        ],
      ),
      bottomNavigationBar: const _BottomNavBar(),
    );
  }
}

class _BottomNavBar extends StatelessWidget {
  const _BottomNavBar();

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(items: const [
      BottomNavigationBarItem(icon: Icon(Icons.home), label: 'a'),
      BottomNavigationBarItem(icon: Icon(Icons.favorite), label: ''),
      BottomNavigationBarItem(icon: Icon(Icons.notifications), label: ''),
    ]);
  }
}

class ColorsUtility {
  static Color? backGroundMain = Colors.grey[900];
  static Color? cardText = Colors.grey[700];
  static Color themeGrey = Colors.grey;
  static Color themeOrange = Colors.orange;
  static Color themeGreyShade600 = Colors.grey.shade600;
  static Color? cardColor = Colors.black54;
}

class PaddingUtility {
  static const pagePaddingRight = EdgeInsets.only(right: 20);
  static const pagePaddingAll = EdgeInsets.all(20);
  static const pagePaddingAll4 = EdgeInsets.all(4);
  static const pagePaddingHorizontal = EdgeInsets.symmetric(horizontal: 25);
  static const pagePaddingVertHoriz = EdgeInsets.symmetric(vertical: 20, horizontal: 8);
  static const pagePaddingCard = EdgeInsets.only(left: 25, bottom: 25);
}

class TextFieldDecoration {}
