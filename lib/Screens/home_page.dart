import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';
import 'package:medical_appointment/core/styles/app_styles.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            width: 100,
            height: 300,
            color: AppStyles.primary,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 45,
                ),
                _welcomeNotification(),
                bannerAndSearchBar()
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.only(top: 40, left: 20),
            child: const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [Text("Categories", style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 20
              ),)],
            ),
          )
        ],
      ),
    );
  }

  Column bannerAndSearchBar() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("Let's find \nyour top doctor!", style: AppStyles.bannerStyle),
        Container(
          padding: const EdgeInsets.only(top: 20),
          child: TextField(
            textAlignVertical: TextAlignVertical.center,
            decoration: InputDecoration(
              filled: true,
              fillColor: Colors.white,
              hintText: "Search here...",
              hintStyle: const TextStyle(
                  fontSize: 14,
                  color: Color(0xFF09121C),
                  fontWeight: FontWeight.w100),
              prefixIcon: const Padding(
                  padding: EdgeInsets.all(18),
                  child: Icon(
                    IconlyLight.search,
                    color: Color(0xFF09121C),
                  )),
              contentPadding: const EdgeInsets.symmetric(vertical: 10),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(
                    30), // Set the border radius for enabled state
                borderSide: BorderSide.none, // Remove the border outline
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30),
                // Set the border radius for focused state
                borderSide: BorderSide.none, // Remove the border outline
              ),
            ),
          ),
        )
      ],
    );
  }

  SizedBox _welcomeNotification() {
    return SizedBox(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Text("Hi, Steven",
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  color: Colors.white)),
          Stack(
            children: [
              Container(
                width: 48,
                height: 48,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(14),
                  color: const Color(0xFFC4E1FF).withOpacity(0.15),
                ),
                child:
                    const Icon(IconlyLight.notification, color: Colors.white),
              ),
              Positioned(
                top: 15, // Adjust the position as needed
                right: 15, // Adjust the position as needed
                child: Container(
                  width: 8,
                  height: 8,
                  decoration: const BoxDecoration(
                    color: Colors.red,
                    shape: BoxShape.circle,
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
