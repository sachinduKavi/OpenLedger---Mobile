import 'package:flutter/material.dart';

class GeneralButton extends StatelessWidget {
  final double width;
  final double height;
  final String buttonName;
  final bool disabled;
  final Function onTap;
  final double horizontalMargin;

  const GeneralButton(
      {super.key,
      this.width = double.infinity,
      this.height = 60,
      required this.buttonName,
      this.disabled = false,
      this.horizontalMargin = 0,
      required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 15, horizontal: horizontalMargin),
      decoration: BoxDecoration(
          border: Border.all(
              width: 1,
              color: const Color(0x80616161),
              strokeAlign: BorderSide.strokeAlignOutside),
          borderRadius: const BorderRadius.all(Radius.circular(15)),
          gradient: const LinearGradient(
              colors: [Color(0xFF494986), Color(0xFF5A71FB)],
              begin: Alignment.centerLeft,
              end: Alignment.centerRight)),
      width: width,
      height: height,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
            backgroundColor:
                MaterialStateColor.resolveWith((states) => Colors.transparent)),
        onPressed: disabled
            ? null
            : () {
                onTap();
              },
        child: Text(
          buttonName,
          style: const TextStyle(
              color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
