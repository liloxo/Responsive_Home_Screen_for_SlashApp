import 'package:flutter/material.dart';
import 'package:responsive_home_screen_for_slashapp/features/home/presentation/pages/homescreen.dart';
import 'package:responsive_home_screen_for_slashapp/features/homescreen/widgets/customnavigationbar.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  List<Widget> pages = [
    const HomeScreen(),
    const Center(
      child: Text('Favorites'),
    ),
    const Center(
      child: Text('MyCart'),
    ),
    const Center(
      child: Text('Profile'),
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CustomNavigationBar(
        selectedIndex: _selectedIndex,
        onTap: (p0) => _onItemTapped(p0),
      ),
      body: Container(child: pages.elementAt(_selectedIndex)),
    );
  }
}
