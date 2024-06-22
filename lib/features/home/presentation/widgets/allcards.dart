import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:responsive_home_screen_for_slashapp/core/responsive/responsive_size.dart';
import 'package:responsive_home_screen_for_slashapp/features/home/domain/entities/items/items.dart';
import 'package:responsive_home_screen_for_slashapp/features/home/presentation/widgets/itemcard.dart';

class AllCards extends StatelessWidget {
  final List<Item> items;
  const AllCards({
    super.key,
    required this.items,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: size(context, 215.h, webHeight(180.h)),
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemCount: 3,
        itemBuilder: (context, i) {
          return ItemCard(
            item: items[i],
          );
        },
        separatorBuilder: (BuildContext context, int index) {
          return SizedBox(
            width: size(context, 15.w, webWidth(15.w)),
          );
        },
      ),
    );
  }
}
