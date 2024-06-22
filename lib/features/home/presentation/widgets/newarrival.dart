import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:responsive_home_screen_for_slashapp/features/home/presentation/blocs/newarrival/newarrival_cubit.dart';
import 'package:responsive_home_screen_for_slashapp/features/home/presentation/blocs/newarrival/newarrival_state.dart';
import 'package:responsive_home_screen_for_slashapp/features/home/presentation/widgets/allcards.dart';
import 'package:responsive_home_screen_for_slashapp/features/home/presentation/widgets/seeall.dart';

class NewArrival extends StatelessWidget {
  const NewArrival({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 22.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SeeAll(
            field: 'New Arrival',
          ),
          BlocBuilder<NewArrivalCubit, NewArrivalState>(
            builder: (context, state) {
              if (state is NewArrivalLoading) {
                return const CircularProgressIndicator();
              } else if (state is NewArrivalLoaded) {
                return AllCards(
                  items: state.items,
                );
              } else if (state is NewArrivalError) {
                return const Text('Error loading New Arrival items');
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
