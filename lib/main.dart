import 'package:flutter/material.dart';
import 'package:open_ledger/screens/LoginPage/ui/LoginPage.dart';

main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  final ThemeData darkMode = ThemeData(
      appBarTheme: const AppBarTheme(backgroundColor: Colors.black),
      scaffoldBackgroundColor: Colors.black,
      brightness: Brightness.dark);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const LoginPage(),
      theme: darkMode,
      debugShowCheckedModeBanner: false,
    );
  }
}
