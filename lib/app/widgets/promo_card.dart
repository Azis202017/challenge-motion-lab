import 'package:challenge_internship1/app/models/data/promo_card_list.dart';
import 'package:challenge_internship1/app/themes/colors/color.dart';
import 'package:challenge_internship1/app/themes/fonts/fonts.dart';
import 'package:flutter/material.dart';

class PromoCard extends StatelessWidget {
  const PromoCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 232,
      child: ListView.builder(
        itemCount: listPromoCard.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          var getData = listPromoCard[index];
          return Padding(
            padding: const EdgeInsets.only(right: 16.0),
            child: Card(
              elevation: 2,
              margin: EdgeInsets.zero,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(
                  6,
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ClipRRect(
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(6),
                      topRight: Radius.circular(6),
                    ),
                    child: Image.asset(
                      getData.image,
                      height: 170,
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(top: 12, left: 12, right: 8.0),
                    child: Text(
                      getData.title,
                      style: FontApp.subheading.copyWith(
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                          top: 4,
                          left: 12,
                          right: 8.0,
                          bottom: 6,
                        ),
                        child: Text(
                          getData.price,
                          style: FontApp.subheading.copyWith(
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          top: 4,
                          bottom: 6,
                        ),
                        child: Text(
                          getData.discountPrice,
                          style: FontApp.subheading.copyWith(
                            fontWeight: FontWeight.w400,
                            color: ColorApp.greyColor4,
                            decoration: TextDecoration.lineThrough,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
