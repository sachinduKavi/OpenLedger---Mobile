import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:open_ledger/components/GeneralButton.dart';
import 'package:open_ledger/screens/LoginPage/ui/LoginPage.dart';

import '../../../Modules/AppColors.dart';

class Registration extends StatefulWidget {
  const Registration({super.key});

  @override
  State<Registration> createState() => _RegistrationState();
}

class _RegistrationState extends State<Registration> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        children: [
          const Text(
            "Registration",
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "Already have an account ? ",
                style: TextStyle(color: DarkMode.fadeText),
              ),
              InkWell(
                onTap: () {
                  Get.to(() => const LoginPage(),
                      transition: Transition.leftToRightWithFade);
                },
                child: const Text(
                  "Login",
                  style: TextStyle(color: DarkMode.secondaryText),
                ),
              ),
            ],
          ),
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
            child: TextField(
                decoration: InputDecoration(
              fillColor: DarkMode.secondaryBackground,
              filled: true,
              hintText: "Enter your email",
              border: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.transparent),
                  borderRadius: BorderRadius.all(Radius.circular(10))),
            )),
          ),
          const Padding(
            padding: EdgeInsets.only(bottom: 20, left: 10, right: 10),
            child: TextField(
                obscureText: true,
                keyboardType: TextInputType.visiblePassword,
                decoration: InputDecoration(
                  fillColor: DarkMode.secondaryBackground,
                  filled: true,
                  hintText: "New Password",
                  border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.transparent),
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                )),
          ),
          const Padding(
            padding: EdgeInsets.only(bottom: 5, left: 10, right: 10),
            child: TextField(
                obscureText: true,
                keyboardType: TextInputType.visiblePassword,
                decoration: InputDecoration(
                  fillColor: DarkMode.secondaryBackground,
                  filled: true,
                  hintText: "Re-enter Password",
                  border: OutlineInputBorder(
                      borderSide:
                          BorderSide(color: Colors.transparent, width: 0),
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                )),
          ),
          GeneralButton(
            buttonName: "Continue",
            onTap: () {},
            horizontalMargin: 10,
          )
        ],
      ),
    );
  }
}
