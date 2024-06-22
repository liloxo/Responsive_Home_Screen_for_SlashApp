import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:responsive_home_screen_for_slashapp/features/home/presentation/blocs/recommendedforyou/recommendedforyou_state.dart';
import 'package:responsive_home_screen_for_slashapp/features/home/presentation/widgets/allcards.dart';
import 'package:responsive_home_screen_for_slashapp/features/home/presentation/widgets/seeall.dart';

import '../blocs/recommendedforyou/recommendedforyou_cubit.dart';

class RecommendedForYou extends StatelessWidget {
  const RecommendedForYou({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 22.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SeeAll(
            field: 'Recommended For You',
          ),
          BlocBuilder<RecommendedForYouCubit, RecommendedForYouState>(
            builder: (context, state) {
              if (state is RecommendedForYouLoading) {
                return const CircularProgressIndicator();
              } else if (state is RecommendedForYouLoaded) {
                return AllCards(
                  items: state.items,
                );
              } else if (state is RecommendedForYouError) {
                return const Text('Error loading Recommended For You items');
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
