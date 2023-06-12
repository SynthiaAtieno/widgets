import 'package:flutter/material.dart';
import 'package:widgets/widgets/button.dart';
import 'package:widgets/widgets/login_field.dart';
import 'package:widgets/widgets/signin_button.dart';

import 'main_screen.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                Image.asset("assets/images/signin_balls.png"),
                const Text(
                  "Sign In.",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 50),
                ),
                const SizedBox(
                  height: 50,
                ),
                const MyButton(
                  iconPath: "assets/svg/g_logo.svg",
                  label: "Continue with google",
                ),
                const SizedBox(
                  height: 15,
                ),
                const MyButton(
                  iconPath: "assets/svg/f_logo.svg",
                  label: 'Continue with facebook',
                  horizontalPadding: 80,
                ),
                const SizedBox(height: 15),
                Text(
                  "or",
                  style: TextStyle(
                      fontSize: MediaQuery.of(context).size.width > 769 &&
                              MediaQuery.of(context).size.height > 1024
                          ? 24
                          : 24),
                ),
                const SizedBox(height: 15),
                const LoginField(hintText: "Email"),
                const SizedBox(height: 15),
                const LoginField(hintText: "Password"),
                const SizedBox(height: 20),
                 GradientButton(
                  funtion:(){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => MainScreen()));
                  },
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
