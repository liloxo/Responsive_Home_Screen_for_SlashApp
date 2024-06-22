import 'package:flutter/material.dart';
import 'package:responsive_home_screen_for_slashapp/features/home/presentation/widgets/bestselling.dart';
import 'package:responsive_home_screen_for_slashapp/features/home/presentation/widgets/categories.dart';
import 'package:responsive_home_screen_for_slashapp/features/home/presentation/widgets/hotdeal.dart';
import 'package:responsive_home_screen_for_slashapp/features/home/presentation/widgets/newarrival.dart';
import 'package:responsive_home_screen_for_slashapp/features/home/presentation/widgets/recommendedforyou.dart';
import 'package:responsive_home_screen_for_slashapp/features/home/presentation/widgets/searchbar.dart';
import 'package:responsive_home_screen_for_slashapp/features/home/presentation/widgets/slashrow.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              SlashRow(),
              BarSearch(),
              HotDeal(),
              Categories(),
              BestSelling(),
              NewArrival(),
              RecommendedForYou()
            ],
          ),
        ),
      ),
    );
  }
}
