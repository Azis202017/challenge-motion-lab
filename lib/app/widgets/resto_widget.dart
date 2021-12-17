import 'package:challenge_internship1/app/themes/colors/color.dart';
import 'package:challenge_internship1/app/themes/fonts/fonts.dart';
import 'package:flutter/material.dart';

class RestoWidget extends StatelessWidget {
  final String image;
  final String title;
  final double rating;
  final double longWay;
  const RestoWidget({
    Key? key,
    required this.image,
    required this.title,
    required this.rating,
    required this.longWay,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.zero,
      leading: Image.asset(
        image,
        width: 80,
        height: 70,
      ),
      title: Text(title, style: FontApp.subheading),
      subtitle: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 8,
          ),
          Row(
            children: [
              Icon(
                Icons.star,
                size: 12.36,
                color: ColorApp.yellowColor,
              ),
              Icon(
                Icons.star,
                size: 12.36,
                color: ColorApp.yellowColor,
              ),
              Icon(
                Icons.star,
                size: 12.36,
                color: ColorApp.yellowColor,
              ),
              Icon(
                Icons.star,
                size: 12.36,
                color: ColorApp.yellowColor,
              ),
              Icon(
                Icons.star,
                size: 12.36,
                color: ColorApp.greyColor3,
              ),
              const SizedBox(
                height: 4,
              ),
              Text('$rating')
            ],
          ),
          const SizedBox(
            height: 6.64,
          ),
          Text(
            '$longWay km',
            style: FontApp.subheading.copyWith(
              fontSize: 14,
            ),
          ),
        ],
      ),
    );
  }
}
