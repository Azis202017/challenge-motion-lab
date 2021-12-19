import 'package:flutter/material.dart';

import 'menu_widget.dart';

class ListKategori extends StatelessWidget {
  const ListKategori({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: const [
        MenuWidget(
          text: 'Menu Sehat',
          image: 'assets/images/emoji_food.png',
        ),
        MenuWidget(
          text: 'Promo',
          image: 'assets/images/diskon.png',
        ),
        MenuWidget(
          text: 'Menu Sehat',
          image: 'assets/images/menu_ayam.png',
        ),
        MenuWidget(
          text: 'Cepat Saji',
          image: 'assets/images/cepat_saji.png',
        ),
      ],
    );
  }
}

