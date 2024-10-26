import 'package:flutter/material.dart';
import 'package:open_ledger/Modules/AppColors.dart';

class Separate extends StatelessWidget {
  final String text;
  Separate({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.all(5),
      child: Row(
        children: [
          Expanded(
              child: Container(
            margin: const EdgeInsets.all(5),
            decoration: const BoxDecoration(color: DarkMode.fadeText),
            height: 2,
          )),
          Text(
            text,
            style: const TextStyle(
                color: DarkMode.fadeText, fontWeight: FontWeight.bold),
          ),
          Expanded(
              child: Container(
            margin: const EdgeInsets.all(5),
            decoration: const BoxDecoration(color: DarkMode.fadeText),
            height: 2,
          )),
        ],
      ),
    );
  }
}
