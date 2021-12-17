import 'package:challenge_internship1/app/models/data/promo_data_list.dart';
import 'package:challenge_internship1/app/widgets/header_text.dart';
import 'package:challenge_internship1/app/widgets/indicator_slider.dart';
import 'package:challenge_internship1/app/widgets/list_kategori.dart';
import 'package:challenge_internship1/app/widgets/promo_card.dart';
import 'package:challenge_internship1/app/widgets/search_box.dart';
import 'package:challenge_internship1/app/widgets/subheading_text.dart';
import 'package:challenge_internship1/app/widgets/tab_content.dart';
import 'package:challenge_internship1/app/widgets/tab_header.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/widgets.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  int _current = 0;

  final TextEditingController _searchController = TextEditingController();

  TabController? _tabController;
  @override
  void initState() {
    _tabController = TabController(length: 3, vsync: this, initialIndex: 0);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final List<Widget> imageSliders = listPromo
        .map(
          (data) => Container(
            margin: const EdgeInsets.all(5.0),
            child: ClipRRect(
              borderRadius: const BorderRadius.all(Radius.circular(12.0)),
              child: Stack(
                children: <Widget>[
                  Image.asset(
                    data.image,
                    height: 120,
                    fit: BoxFit.cover,
                  ),
                ],
              ),
            ),
          ),
        )
        .toList();
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            margin: const EdgeInsets.only(left: 16, right: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const HeaderText(),
                const SizedBox(
                  height: 16,
                ),
                SearchBox(searchController: _searchController),
                const SizedBox(
                  height: 40,
                ),
                CarouselSlider(
                  items: imageSliders,
                  options: CarouselOptions(
                    autoPlay: true,
                    aspectRatio: 3.0,
                    enlargeCenterPage: true,
                    onPageChanged: (index, reason) {
                      setState(
                        () {
                          _current = index;
                        },
                      );
                    },
                  ),
                ),
                IndicatorSlider(current: _current),
                const SizedBox(height: 20),
                const SubHeadingText(
                  titleText: 'Pilih Kategori',
                  showRightText: true,
                  rightText: 'Lihat Semua',
                ),
                const SizedBox(
                  height: 24,
                ),
                const ListKategori(),
                const SubHeadingText(
                  titleText: 'Voila Promo!',
                  showSubtitleText: true,
                  subTitleText: 'Ada promo apa ya disini?',
                  showRightText: true,
                  rightText: 'Lihat Semua',
                ),
                const SizedBox(
                  height: 16,
                ),
                const PromoCard(),
                const SubHeadingText(
                  titleText: 'Wah ada resto enak, loh!',
                  showSubtitleText: true,
                  subTitleText: 'Yuk Cobain!',
                  showRightText: true,
                  rightText: 'Lihat Semua',
                ),
                TabHeader(tabController: _tabController),
                TabContent(tabController: _tabController),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

