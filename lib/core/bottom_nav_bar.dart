import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';
import 'package:medical_appointment/core/styles/app_styles.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          selectedItemColor: AppStyles.primary,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          items: const [
            BottomNavigationBarItem(icon: Icon(IconlyBold.home), label: "Home"),
            BottomNavigationBarItem(icon: Icon(IconlyLight.calendar), label: "Calendar"),
            BottomNavigationBarItem(icon: Icon(IconlyLight.chat), label: "Chat"),
            BottomNavigationBarItem(icon: Icon(IconlyLight.user), label: "User")
          ],
        ),
    );
  }
}
