import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iconsax/iconsax.dart';
import 'package:responsive_home_screen_for_slashapp/core/theme/textstyles.dart';

class CustomNavigationBar extends StatelessWidget {
  final int selectedIndex;
  final void Function(int)? onTap;
  const CustomNavigationBar(
      {super.key, required this.selectedIndex, this.onTap});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
        iconSize: 30.r,
        type: BottomNavigationBarType.fixed,
        showUnselectedLabels: true,
        currentIndex: selectedIndex,
        onTap: onTap,
        unselectedLabelStyle: TextStyles.textStyleTwo,
        selectedLabelStyle: TextStyles.textStyleOne,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.black,
        items: [
          _buildBottomNavigationBarItem(
              Iconsax.home, Iconsax.home_15, 'Home', 0),
          _buildBottomNavigationBarItem(
              Iconsax.heart, Iconsax.heart5, 'Favorites', 1),
          _buildBottomNavigationBarItem(
              Iconsax.shopping_cart, Iconsax.shopping_cart5, 'My Cart', 2),
          _buildBottomNavigationBarItem(
              Iconsax.profile_circle, Iconsax.profile_circle5, 'Profile', 3),
        ]);
  }

  BottomNavigationBarItem _buildBottomNavigationBarItem(
      IconData icon1, IconData icon2, String label, int index) {
    return BottomNavigationBarItem(
      icon: Column(
        children: [
          if (selectedIndex == index)
            Container(
              height: 6,
              color: Colors.black,
            ),
          Padding(
            padding: const EdgeInsets.only(bottom: 5, top: 8),
            child: Icon(selectedIndex == index ? icon2 : icon1),
          ),
        ],
      ),
      label: label,
    );
  }
}
