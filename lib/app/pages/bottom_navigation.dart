import 'package:challenge_internship1/app/pages/home_page.dart';
import 'package:challenge_internship1/app/themes/fonts/fonts.dart';
import 'package:flutter/material.dart';

class BottomNavigationPage extends StatefulWidget {
  const BottomNavigationPage({Key? key}) : super(key: key);

  @override
  _BottomNavigationPageState createState() => _BottomNavigationPageState();
}

class _BottomNavigationPageState extends State<BottomNavigationPage> {
  int _selectedIndex = 0;
  static const List<Widget> _widgetOptions = <Widget>[
    HomePage(),
   
    Text(
      'Halaman Riwayat',
    ),
  ];
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(
          _selectedIndex,
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon: Padding(
              padding: EdgeInsets.only(bottom: 5),
              child: Icon(Icons.explore),
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Padding(
              padding: EdgeInsets.only(bottom: 5),
              child: Icon(
                Icons.description,
              ),
            ),
            label: 'Riwayat',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedIconTheme: const IconThemeData(
          color: Colors.green,
        ),
        unselectedIconTheme: const IconThemeData(
          color: Colors.grey,
        ),
        unselectedLabelStyle: FontApp.caption,
        selectedItemColor: Colors.black,
        selectedLabelStyle: FontApp.caption,
        onTap: _onItemTapped,
      ),
    );
  }
}
