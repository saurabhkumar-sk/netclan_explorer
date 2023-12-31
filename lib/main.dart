import 'package:flutter/material.dart';
import 'package:netclan_explorer/screens/homepage_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Netclan Explorer',
      theme: ThemeData(
        appBarTheme: const AppBarTheme(color: Color.fromARGB(255, 7, 58, 103)),
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const HomePageScreen(),
    );
  }
}
