import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:widgets/palletes.dart';

class MyButton extends StatelessWidget {
  final String label;
  final String iconPath;
  final double horizontalPadding;

  const MyButton({Key? key, required this.iconPath, required this.label, this.horizontalPadding = 100})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton.icon(
      onPressed: () {},
      icon: SvgPicture.asset(
        iconPath,
        width: 25,
        color: Pallete.whiteColor,
      ),
      label: Text(
        label,
        style: const TextStyle(
          color: Pallete.whiteColor,
        ),
      ),
      style: TextButton.styleFrom(
        padding:  EdgeInsets.symmetric(
          vertical: MediaQuery.of(context).size.width > 769 ? 30 : 15,
          horizontal: MediaQuery.of(context).size.height > 1024 ? horizontalPadding : 60,
        ),
        shape: RoundedRectangleBorder(
          side: const BorderSide(
            color: Pallete.borderColor,
            width: 3,
          ),
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  }
}
