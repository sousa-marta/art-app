import 'package:art_app/routes.dart';
import 'package:art_app/screens/detail_screen.dart';
import 'package:art_app/screens/home_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Art App',
      // theme: ThemeData(
      //   elevatedButtonTheme: ElevatedButtonThemeData(
      //     style: ElevatedButton.styleFrom(
      //       backgroundColor: Color.fromARGB(255, 68, 0, 132),
      //       padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 26),
      //       shape: RoundedRectangleBorder(
      //         borderRadius: BorderRadius.circular(5),
      //       ),
      //       textStyle: const TextStyle(
      //         color: Color(0xFFFFFFFF),
      //         fontSize: 18,
      //       ),
      //     ),
      //   ),
      // ),
      initialRoute: Routes.home.value,
      routes: {
        Routes.home.value: (context) => HomeScreen(),
        Routes.details.value: (context) => const DetailScreen(),
      },
    );
  }
}
