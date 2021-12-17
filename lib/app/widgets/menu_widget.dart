import 'package:challenge_internship1/app/themes/colors/color.dart';
import 'package:challenge_internship1/app/themes/fonts/fonts.dart';
import 'package:flutter/material.dart';

class MenuWidget extends StatelessWidget {
  final String text;
  final String image;
  const MenuWidget({
    Key? key,
    required this.text,
    required this.image,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Container(
        width: 70,
        height: 70,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          border: Border.all(
            color: ColorApp.greyColorBorder
          ),
        ),
        child: Column(
          children: [
            SizedBox(width: 40, height: 40, child: Padding(
              padding: const EdgeInsets.only(top : 8.0),
              child: Image.asset(image),
            )),
            const SizedBox(height: 8),
            Text(
              text,
              style: FontApp.iconText,
            ),
          ],
        ),
      ),
    );
  }
}
