import 'package:chatapp/screens/splash-screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch()
            .copyWith(secondary: const Color.fromARGB(255, 239, 239, 235)),
        appBarTheme: const AppBarTheme(
          backgroundColor: Color.fromARGB(225, 140, 185, 4),
        ),
        primaryColor: const Color.fromARGB(197, 122, 242, 23),
      ),
      home: SplashScreen(),
    );
  }
}
