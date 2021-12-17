import 'package:challenge_internship1/app/themes/fonts/fonts.dart';
import 'package:flutter/material.dart';

class SubHeadingText extends StatelessWidget {
  final String titleText;
  final String? subTitleText;
  final bool? showSubtitleText;
  final bool? showRightText;
  final String? rightText;

  const SubHeadingText({
    Key? key,
    required this.titleText,
    this.showSubtitleText = false,
    this.showRightText = false,
    this.rightText,
    this.subTitleText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 25,
            ),
            Text(
              titleText,
              style: FontApp.subheading,
            ),
            Text(
              showSubtitleText != false ? subTitleText! : '',
              style: FontApp.bodyRegular1,
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(top: 8),
          child: Text(
            showRightText != false ? rightText! : '',
            style: FontApp.bodyRegular2,
          ),
        ),
      ],
    );
  }
}
