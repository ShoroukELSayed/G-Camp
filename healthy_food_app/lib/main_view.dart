import 'package:flutter/material.dart';
import 'package:healthy_food_app/core/utils/app_colors.dart';
import 'package:healthy_food_app/features/cart/ui/views/cart_view.dart';
import 'package:healthy_food_app/features/favorite/ui/views/favorite_view.dart';
import 'package:healthy_food_app/features/profile/ui/views/profile_view.dart';
import 'package:healthy_food_app/features/search/ui/views/search_view.dart';

import 'features/home/ui/views/home_view.dart';

class MainView extends StatefulWidget {
  const MainView({super.key});

  static const String id = 'MainView';
  @override
  State<MainView> createState() => _MainViewState();
}

class _MainViewState extends State<MainView> {
  int currentIndex = 0;

  final List<Widget> pages = [
     HomeView(),
     FavoriteView(),
     SearchView(),
     CartView(),
     ProfileView(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        onTap: (value) => setState(() => currentIndex = value),
        unselectedItemColor: const Color(0xffC1BFBF),
        selectedItemColor: AppColors.secondaryColor,
        
        iconSize: 30,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home_outlined,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.favorite_border,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.search,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.add_shopping_cart,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person_pin,
            ),
            label: '',
          ),
        ],
      ),
    );
  }
}
