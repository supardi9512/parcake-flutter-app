import 'package:flutter/material.dart';
import 'package:parcakes/widgets/items_widget.dart';
import 'package:parcakes/widgets/home_buttom_bar_widget.dart';
import 'package:parcakes/models/cake_items.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key, required this.username});
  final String username;

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    _tabController = TabController(length: 4, vsync: this, initialIndex: 0);
    _tabController.addListener(_handleTabSelection);
    super.initState();
  }

  _handleTabSelection() {
    if (_tabController.indexIsChanging) {
      setState(() {});
    }
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var seen = <String>{};
    final cakeCategories =
        cakeItemsList.where((cake) => seen.add(cake.category)).toList();

    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            InkWell(
              onTap: () {},
              child: const Icon(
                Icons.sort_rounded,
                color: Colors.white,
                size: 35,
              ),
            ),
            InkWell(
              onTap: () {},
              child: const Icon(
                Icons.notifications,
                color: Colors.white,
                size: 35,
              ),
            )
          ],
        ),
        automaticallyImplyLeading: false,
        backgroundColor: Colors.orange,
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(top: 15),
          child: ListView(
            children: [
              const SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Text(
                  "Welcome, ${widget.username}!",
                  style: const TextStyle(
                    color: Colors.black,
                    fontSize: 30,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              TabBar(
                controller: _tabController,
                labelColor: Colors.orange,
                unselectedLabelColor: Colors.black,
                isScrollable: true,
                indicator: const UnderlineTabIndicator(
                  borderSide: BorderSide(
                    width: 3,
                    color: Colors.orange,
                  ),
                  insets: EdgeInsets.symmetric(horizontal: 16),
                ),
                labelStyle: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                ),
                labelPadding: const EdgeInsets.symmetric(horizontal: 20),
                tabs: cakeCategories.map((cake) {
                  return Tab(
                    text: cake.category,
                  );
                }).toList(),
              ),
              const SizedBox(height: 10),
              Center(
                child: cakeCategories.map((cake) {
                  return ItemsWidget(cakeCategorySelected: cake.category);
                }).toList()[_tabController.index],
              ),
              const SizedBox(height: 30),
            ],
          ),
        ),
      ),
      bottomNavigationBar: const HomeButtomBarWidget(),
    );
  }
}
