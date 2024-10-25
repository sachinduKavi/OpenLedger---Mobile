import 'package:flutter/material.dart';

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
                Padding(
                    padding: EdgeInsets.all(2),
                    child: TextField(
                      cursorColor: Colors.white,
                      style:
                          TextStyle(color: DarkMode.primaryText, fontSize: 20),
                      decoration: InputDecoration(
                          hintText: "User Email",
                          hintStyle: TextStyle(color: Color(0xFF7D7690)),
                          border: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: Color(0xFF2D273C), width: 5),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(15)))),
                    ))
              ],
            )
          ],
        ),
      ),
    );
  }
}
