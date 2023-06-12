import 'package:flutter/material.dart';
import 'package:widgets/palletes.dart';

class GradientButton extends StatelessWidget {
  var funtion;
   GradientButton({required this.funtion, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(colors: [
          Pallete.gradient1,
          Pallete.gradient2,
          Pallete.gradient3,
        ]

        )
      ),
      child: ElevatedButton(
        onPressed: funtion,
        style: ElevatedButton.styleFrom(
          fixedSize: const Size(300, 55),
          backgroundColor: Colors.transparent,
          shadowColor: Colors.transparent
        ),
        child: const Text(
          "Sign In",
          style: TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 17
          ),
        ),
      ),
    );
  }
}
