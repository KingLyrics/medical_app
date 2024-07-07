import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';
import 'package:medical_appointment/Screens/home_page.dart';
import 'package:medical_appointment/core/styles/app_styles.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  final appScreens = [
   const HomePage(),
    const Text("Calendar"),
    const Text("Chat"),
    const Text("Person"),
  ];

  int _selectedIndex = 0;

  void _onItemTapped(int index) {
   setState(() {
     _selectedIndex = index;
   });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: appScreens[_selectedIndex],),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        onTap: _onItemTapped,
        currentIndex: _selectedIndex,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: AppStyles.primary,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        items: const [
          BottomNavigationBarItem(icon: Icon(IconlyBold.home), label: "Home"),
          BottomNavigationBarItem(
              icon: Icon(IconlyLight.calendar), label: "Calendar"),
          BottomNavigationBarItem(icon: Icon(IconlyLight.chat), label: "Chat"),
          BottomNavigationBarItem(icon: Icon(IconlyLight.profile), label: "User")
        ],
      ),
    );
  }
}
