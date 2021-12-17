import 'package:challenge_internship1/app/models/data/restaurant_list.dart';
import 'package:challenge_internship1/app/widgets/resto_widget.dart';
import 'package:flutter/material.dart';

class TabContent extends StatelessWidget {
  final TabController? _tabController;

  const TabContent({
    Key? key,
    required TabController? tabController,
  })  : _tabController = tabController,
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 332,
      child: TabBarView(
        children: <Widget>[
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: restaurant
                .map(
                  (restaurants) => Column(
                    children: [
                      const SizedBox(height: 16),
                      RestoWidget(
                        image: restaurants.image,
                        title: restaurants.title,
                        rating: restaurants.rating,
                        longWay: restaurants.longWay,
                      ),
                      const SizedBox(height: 16),
                    ],
                  ),
                )
                .toList(),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: restaurant
                .map(
                  (restaurants) => Column(
                    children: [
                      const SizedBox(height: 16),
                      RestoWidget(
                        image: restaurants.image,
                        title: restaurants.title,
                        rating: restaurants.rating,
                        longWay: restaurants.longWay,
                      ),
                      const SizedBox(height: 16),
                    ],
                  ),
                )
                .toList(),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: restaurant
                .map(
                  (restaurants) => Column(
                    children: [
                      const SizedBox(height: 16),
                      RestoWidget(
                        image: restaurants.image,
                        title: restaurants.title,
                        rating: restaurants.rating,
                        longWay: restaurants.longWay,
                      ),
                      const SizedBox(height: 16),
                    ],
                  ),
                )
                .toList(),
          ),
        ],
        controller: _tabController,
      ),
    );
  }
}
