import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:open_ledger/components/GeneralButton.dart';
import 'package:open_ledger/components/Separate.dart';
import 'package:open_ledger/screens/Registration/ui/Registration.dart';

import '../../../Modules/AppColors.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text(
              "Login",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "Don't have an account ",
                  style: TextStyle(color: DarkMode.fadeText),
                ),
                InkWell(
                  onTap: () {
                    Get.to(() => const Registration(),
                        transition: Transition.rightToLeftWithFade);
                    // Navigator.push(
                    //     context,
                    //     MaterialPageRoute(
                    //         builder: (context) => const Registration()));
                  },
                  child: const Text(
                    "Register",
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
                hintText: "Your Email",
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
                    hintText: "Password",
                    border: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.transparent),
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                  )),
            ),
            Container(
              alignment: Alignment.centerRight,
              margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
              width: double.infinity,
              child: const Text(
                "Forget password ?",
                style: TextStyle(color: DarkMode.fadeText),
              ),
            ),
            GeneralButton(
              horizontalMargin: 10,
              buttonName: "Login",
              onTap: () {},
            ),
            Separate(
              text: "OR CONTINUE WITH",
            ),
            Row(
              children: [
                Expanded(
                    child: InkWell(
                  onTap: () {},
                  child: Container(
                      margin: const EdgeInsets.all(5),
                      height: 60,
                      decoration: const BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          color: DarkMode.secondaryBackground),
                      child: Image.asset("assets/images/google.png")),
                )),
                Expanded(
                    child: InkWell(
                  onTap: () {},
                  child: Container(
                      margin: const EdgeInsets.all(5),
                      height: 60,
                      decoration: const BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          color: DarkMode.secondaryBackground),
                      child: Image.asset("assets/images/apple.png")),
                )),
              ],
            )
          ],
        ),
      ),
    );
  }
}
