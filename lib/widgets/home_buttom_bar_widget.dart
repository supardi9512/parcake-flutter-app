import 'package:flutter/material.dart';

class HomeButtomBarWidget extends StatelessWidget {
  const HomeButtomBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      height: 80,
      decoration: const BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black,
            spreadRadius: 1,
            blurRadius: 8,
          ),
        ],
      ),
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Icon(
            Icons.home,
            color: Colors.orange,
            size: 35,
          ),
          Icon(
            Icons.favorite_outlined,
            color: Colors.black,
            size: 35,
          ),
          Icon(
            Icons.notifications,
            color: Colors.black,
            size: 35,
          ),
          Icon(
            Icons.person,
            color: Colors.black,
            size: 35,
          )
        ],
      ),
    );
  }
}
