import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
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
            height: 320,
            color: AppStyles.primary,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 45,
                ),
                _welcomeNotification(),
                 Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Let's find \nyour top doctor!", style: AppStyles.bannerStyle
                    ),
                    Container(
                      decoration: BoxDecoration(boxShadow: [
                        BoxShadow(
                            color: const Color(0xFF1D1617).withOpacity(0.11),
                            blurRadius: 40,
                            spreadRadius: 0.0)
                      ]),
                      child:  const TextField(
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.white,
                          contentPadding: const EdgeInsets.all(10)
                        ),
                      ),
                    )

                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }

  Container _welcomeNotification() {
    return Container(
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
                        child: const Icon(IconlyLight.notification, color: Colors.white),
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
