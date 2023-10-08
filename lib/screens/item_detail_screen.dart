import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:parcakes/models/cake_items.dart';

class ItemDetailScreen extends StatefulWidget {
  const ItemDetailScreen({super.key, required this.cake});

  final CakeItems cake;

  @override
  State<ItemDetailScreen> createState() => _ItemDetailScreenState();
}

class _ItemDetailScreenState extends State<ItemDetailScreen> {
  int qty = 1;
  bool isFavorite = false;

  void _incrementQty() {
    setState(() {
      qty++;
    });
  }

  void _decrementQty() {
    setState(() {
      qty--;

      if (qty < 1) {
        qty = 1;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: const Icon(
            Icons.arrow_back_ios_new,
            color: Colors.white,
          ),
        ),
        automaticallyImplyLeading: false,
        backgroundColor: Colors.orange,
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.only(
              bottom: 20,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: Image.asset(widget.cake.image),
                ),
                const SizedBox(height: 30),
                Padding(
                  padding: const EdgeInsets.only(
                    left: 25,
                    right: 40,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        widget.cake.category.toUpperCase(),
                        style: TextStyle(
                          color: Colors.black.withOpacity(0.4),
                          letterSpacing: 3,
                        ),
                      ),
                      const SizedBox(height: 10),
                      Text(
                        widget.cake.name,
                        style: const TextStyle(
                          fontSize: 30,
                          letterSpacing: 1,
                          color: Colors.black,
                        ),
                      ),
                      const SizedBox(height: 15),
                      SizedBox(
                        width: MediaQuery.of(context).size.width,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              padding: const EdgeInsets.all(15),
                              width: 120,
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: Colors.black.withOpacity(0.2),
                                ),
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  InkWell(
                                    onTap: () {
                                      _decrementQty();
                                    },
                                    child: const Icon(
                                      CupertinoIcons.minus,
                                      size: 18,
                                      color: Colors.black,
                                    ),
                                  ),
                                  const SizedBox(width: 15),
                                  Text(
                                    "$qty",
                                    style: const TextStyle(
                                      color: Colors.black,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                  const SizedBox(width: 15),
                                  InkWell(
                                    onTap: () {
                                      _incrementQty();
                                    },
                                    child: const Icon(
                                      CupertinoIcons.plus,
                                      size: 18,
                                      color: Colors.black,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Text(
                              widget.cake.price,
                              style: const TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w500,
                                color: Colors.orange,
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 15),
                      Text(
                        widget.cake.description,
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: Colors.black.withOpacity(0.4),
                        ),
                      ),
                      const SizedBox(height: 20),
                      SizedBox(
                        width: MediaQuery.of(context).size.width,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              padding: const EdgeInsets.symmetric(
                                vertical: 15,
                                horizontal: 35,
                              ),
                              decoration: BoxDecoration(
                                color: Colors.orange,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: const Text(
                                "Add to Cart",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 22,
                                  fontWeight: FontWeight.bold,
                                  letterSpacing: 1,
                                ),
                              ),
                            ),
                            InkWell(
                              child: Container(
                                padding: const EdgeInsets.symmetric(
                                  vertical: 15,
                                  horizontal: 35,
                                ),
                                decoration: BoxDecoration(
                                  color: Colors.black,
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Icon(
                                  isFavorite
                                      ? Icons.favorite
                                      : Icons.favorite_outline,
                                  color: Colors.orange,
                                ),
                              ),
                              onTap: () {
                                setState(() {
                                  isFavorite = !isFavorite;
                                });
                              },
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
