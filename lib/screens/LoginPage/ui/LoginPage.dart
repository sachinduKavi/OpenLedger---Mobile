import 'package:flutter/material.dart';
import 'package:open_ledger/components/GeneralButton.dart';

import '../../../Modules/AppColors.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "Login",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Don't have an account ",
                  style: TextStyle(color: DarkMode.fadeText),
                ),
                Text(
                  "Register",
                  style: TextStyle(color: DarkMode.secondaryText),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
              child: TextField(
                  decoration: InputDecoration(
                fillColor: Color(0xFF2D273C),
                filled: true,
                hintText: "Your Email",
                border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.transparent),
                    borderRadius: BorderRadius.all(Radius.circular(10))),
              )),
            ),
            Padding(
              padding: EdgeInsets.only(bottom: 5, left: 10, right: 10),
              child: TextField(
                  obscureText: true,
                  keyboardType: TextInputType.visiblePassword,
                  decoration: InputDecoration(
                    fillColor: Color(0xFF2D273C),
                    filled: true,
                    hintText: "Password",
                    border: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.transparent),
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                  )),
            ),
            Generalbutton()
          ],
        ),
      ),
    );
  }
}
