import 'package:challenge_internship1/app/models/data/promo_data_list.dart';
import 'package:challenge_internship1/app/themes/colors/color.dart';
import 'package:flutter/material.dart';

class IndicatorSlider extends StatelessWidget {
  const IndicatorSlider({
    Key? key,
    required int current,
  }) : _current = current, super(key: key);

  final int _current;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: listPromo.asMap().entries.map(
        (entry) {
          return Container(
            width: 8.0,
            height: 8.0,
            margin: const EdgeInsets.symmetric(
                vertical: 8.0, horizontal: 4.0),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: _current == entry.key
                  ? ColorApp.mainColor
                  : ColorApp.greyColor,
            ),
          );
        },
      ).toList(),
    );
  }
}
