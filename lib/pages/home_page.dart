import 'package:flutter/material.dart';
import 'package:study_flutter/components/bottom_navbar.dart';
import 'package:study_flutter/pages/test_page.dart';
import 'package:study_flutter/pages/test_page2.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  void navigateBottomNavbar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  final List<Widget> _pages = <Widget>[
    const TestPage(),
    const TestPage2(),
    Container(color: Colors.blue),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavbar(
        onTabChange: (index) => navigateBottomNavbar(index),
      ),
      body: _pages[_selectedIndex],
    );
  }
}
