import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class BottomNavbar extends StatelessWidget {
  final void Function(int)? onTabChange;
  const BottomNavbar({super.key, required this.onTabChange});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 10),
      child: GNav(
        color: Colors.grey[400],
        activeColor: Colors.grey.shade700,
        tabActiveBorder: Border.all(color: Colors.white),
        tabBackgroundColor: Colors.grey.shade100,
        // mainAxisAlignment: MainAxisAlignment.center,
        tabBorderRadius: 15,
        onTabChange: (value) => onTabChange!(value),
        tabs: [
          GButton(icon: Icons.home, text: 'Test'),
          GButton(icon: Icons.bookmark, text: 'Test2'),
          GButton(icon: Icons.settings, text: 'Settings'),
        ],
        selectedIndex: 0,
      ),
    );
  }
}
