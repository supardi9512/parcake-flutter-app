import 'package:flutter/material.dart';
import 'package:parcakes/models/cake_items.dart';
import 'package:parcakes/screens/item_detail_screen.dart';

class ItemsWidget extends StatelessWidget {
  const ItemsWidget({super.key, required this.cakeCategorySelected});

  final String cakeCategorySelected;

  @override
  Widget build(BuildContext context) {
    final cakeItems =
        cakeItemsList.where((cake) => cake.category == cakeCategorySelected);

    return GridView.count(
      physics: const NeverScrollableScrollPhysics(),
      crossAxisCount: 2,
      shrinkWrap: true,
      childAspectRatio: (150 / 220),
      children: cakeItems.map((cake) {
        return Container(
          margin: const EdgeInsets.symmetric(vertical: 13, horizontal: 13),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.4),
                spreadRadius: 1,
                blurRadius: 8,
              ),
            ],
          ),
          clipBehavior: Clip.hardEdge,
          child: Column(
            children: [
              InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => ItemDetailScreen(cake: cake)));
                },
                child: Image(
                  image: AssetImage(cake.image),
                  fit: BoxFit.fill,
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      vertical: 5,
                      horizontal: 5,
                    ),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            cake.name,
                            style: const TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      vertical: 5,
                      horizontal: 5,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          cake.price,
                          style: const TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color: Colors.orange,
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              )
            ],
          ),
        );
      }).toList(),
    );
  }
}
