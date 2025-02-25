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
      appBar: AppBar(
        leading: Builder(
          builder:
              (context) => IconButton(
                icon: Icon(Icons.menu, color: Colors.black),
                onPressed: () {
                  Scaffold.of(context).openDrawer();
                },
              ),
        ),
        title: const Text("appBar"),
      ),
      drawer: Drawer(
        backgroundColor: Colors.grey[900],
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.zero),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                DrawerHeader(child: Image.asset("lib/images/logo.png")),

                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25),
                  child: Divider(color: Colors.grey[800]),
                ),

                // pages
                ListTile(
                  leading: const Icon(Icons.home, color: Colors.white),
                  title: const Text(
                    "Home",
                    style: TextStyle(color: Colors.white),
                  ),
                  onTap: () {
                    Navigator.pop(context);
                    navigateBottomNavbar(0);
                  },
                ),
                ListTile(
                  leading: const Icon(Icons.home, color: Colors.white),
                  title: const Text(
                    "Test2",
                    style: TextStyle(color: Colors.white),
                  ),
                  onTap: () {
                    Navigator.pop(context);
                    navigateBottomNavbar(1);
                  },
                ),
              ],
            ),

            ListTile(
              leading: const Icon(Icons.logout, color: Colors.white),
              title: const Text(
                "Log Out",
                style: TextStyle(color: Colors.white),
              ),
              onTap: () {
                Navigator.pop(context);
                navigateBottomNavbar(1);
              },
            ),

            // logo
          ],
        ),
      ),
      body: _pages[_selectedIndex],
    );
  }
}
