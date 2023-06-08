import 'package:flutter/material.dart';
import 'package:widgets/palletes.dart';

class LoginField extends StatelessWidget {
  final String hintText;
  const LoginField({Key? key, required this.hintText}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
        constraints: BoxConstraints(
        maxWidth: MediaQuery.of(context).size.width < 769 ? 300 : 800,
    ),
    child: TextFormField(
    decoration: InputDecoration(
    enabledBorder: OutlineInputBorder(
    borderSide: const BorderSide(
    color: Pallete.borderColor,
    width: 3
    ),
    borderRadius: BorderRadius.circular(10)
    ),
    focusedBorder: OutlineInputBorder(
    borderSide: const BorderSide(
    color: Pallete.gradient1,
    width: 3
    ),
    borderRadius: BorderRadius.circular(10)
    ),
      hintText: hintText,
    ),
    ),
    );
  }
}
