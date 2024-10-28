import 'package:coffee_app_ui_clone/pages/home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        //colorScheme: const ColorScheme.dark().copyWith(primary: ThemeColors.primaryColorOrange),
        colorScheme: ThemeData.dark().colorScheme.copyWith(primary: ThemeColors.primaryColorOrange),
        brightness: Brightness.dark,
      )
          //focusColor: ThemeColors.primaryColorOrange,
          .copyWith(
        //focusColor: ThemeColors.primaryColorOrange,
        //hintColor: ThemeColors.primaryColorOrange,
        appBarTheme: const AppBarTheme(
          systemOverlayStyle: SystemUiOverlayStyle.light,
        ),
      ),
      home: const HomePage(),
    );
  }
}

class ThemeColors {
  static const primaryColorOrange = Colors.orange;
}
