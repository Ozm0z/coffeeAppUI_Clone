import 'package:coffee_app_ui_clone/product/language/language_items.dart';
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
          const SizedBox(),

          //SearchBar
          TextField(
            decoration: InputDecoration(
              hintText: LanguageItems().homeSearchHint,
              prefixIcon: const Icon(Icons.search_outlined), //değişecek odakta böyle olacak
              //prefixIconColor: ColorsUtility.themeOrange,
              enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: ColorsUtility.themeGreyShade600)), //tıklamadanki border
              focusedBorder: OutlineInputBorder(
                //tıklayınca etrafına border atıyor
                borderSide: BorderSide(color: ColorsUtility.themeGreyShade600),
              ),
            ),
          ),
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
      BottomNavigationBarItem(icon: Icon(Icons.home), label: ''),
      BottomNavigationBarItem(icon: Icon(Icons.favorite), label: ''),
      BottomNavigationBarItem(icon: Icon(Icons.notifications), label: ''),
    ]);
  }
}

class ColorsUtility {
  static Color? backGroundMain = Colors.grey[900];
  static Color themeOrange = Colors.orange;
  static Color themeGreyShade600 = Colors.grey.shade600;
}

class PaddingUtility {
  static const pagePaddingRight = EdgeInsets.only(right: 20);
  static const pagePaddingHorizontal = EdgeInsets.symmetric(horizontal: 25);
}

class TextFieldDecoration {}
