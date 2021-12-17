
import 'package:challenge_internship1/app/themes/colors/color.dart';
import 'package:challenge_internship1/app/themes/fonts/fonts.dart';
import 'package:flutter/material.dart';

class HeaderText extends StatelessWidget {
  const HeaderText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Icon(
              Icons.arrow_back,
              color: ColorApp.blackColor,
            ),
            const SizedBox(
              width: 12,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 20,
                ),
                Text(
                  'Alamatmu',
                  style: FontApp.bodyRegular1,
                ),
                SizedBox(
                  width: 220,
                  height: 36,
                  child: Text(
                    'Jl. Soekarno Hatta No. 4, Madiun',
                    style: FontApp.bodyMedium1,
                  ),
                ),
              ],
            ),
          ],
        ),
        const Icon(
          Icons.history,
        ),
      ],
    );
  }
}

