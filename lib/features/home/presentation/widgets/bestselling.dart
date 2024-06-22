import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:responsive_home_screen_for_slashapp/features/home/presentation/blocs/bestselling/bestselling_cubit.dart';
import 'package:responsive_home_screen_for_slashapp/features/home/presentation/blocs/bestselling/bestselling_state.dart';
import 'package:responsive_home_screen_for_slashapp/features/home/presentation/widgets/allcards.dart';
import 'package:responsive_home_screen_for_slashapp/features/home/presentation/widgets/seeall.dart';

class BestSelling extends StatelessWidget {
  const BestSelling({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 22.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SeeAll(
            field: 'Best Selling',
          ),
          BlocBuilder<BestSellingCubit, BestSellingState>(
            builder: (context, state) {
              if (state is BestSellingLoading) {
                return const CircularProgressIndicator();
              } else if (state is BestSellingLoaded) {
                return AllCards(
                  items: state.items,
                );
              } else if (state is BestSellingError) {
                return const Text('Error loading Best Selling items');
              } else {
                return const Text('Unknown state');
              }
            },
          )
        ],
      ),
    );
  }
}
