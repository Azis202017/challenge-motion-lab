import 'package:challenge_internship1/app/themes/colors/color.dart';
import 'package:challenge_internship1/app/themes/fonts/fonts.dart';
import 'package:flutter/material.dart';

class TabHeader extends StatelessWidget {
  const TabHeader({
    Key? key,
    required TabController? tabController,
  })  : _tabController = tabController,
        super(key: key);

  final TabController? _tabController;

  @override
  Widget build(BuildContext context) {
    return TabBar(
      unselectedLabelColor: ColorApp.greyColor,
      labelColor: ColorApp.mainColor,
      labelStyle: FontApp.subheading,
      indicatorColor: ColorApp.mainColor,
      tabs: const [
        Tab(
          text: 'Terbaru',
        ),
        Tab(
          text: 'Popular',
        ),
        Tab(
          text: 'Rekomendasi',
        )
      ],
      controller: _tabController,
      indicatorSize: TabBarIndicatorSize.tab,
    );
  }
}
