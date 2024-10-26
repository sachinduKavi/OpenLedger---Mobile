import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:open_ledger/screens/LoginPage/ui/LoginPage.dart';
import 'package:open_ledger/screens/Registration/ui/Registration.dart';

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
    return GetMaterialApp(
      home: const Registration(),
      theme: darkMode,
      debugShowCheckedModeBanner: false,
    );
  }
}
