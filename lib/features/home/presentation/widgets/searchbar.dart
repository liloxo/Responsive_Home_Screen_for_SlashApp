import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:responsive_home_screen_for_slashapp/core/components/searchtextfield.dart';
import 'package:responsive_home_screen_for_slashapp/core/constants/colors.dart';
import 'package:responsive_home_screen_for_slashapp/core/responsive/responsive_size.dart';

class BarSearch extends StatelessWidget {
  const BarSearch({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 22.w),
      child: SizedBox(
        height: 45.h,
        child: const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [SearchFieldBar(), FilterIcon()],
        ),
      ),
    );
  }
}

class FilterIcon extends StatelessWidget {
  const FilterIcon({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: AppColors.greyColor,
      ),
      margin: EdgeInsets.only(left: 8.w, bottom: 4.h),
      width: size(context, 47.w, 47.w),
      child: Center(
        child: Icon(
          Icons.tune_rounded,
          color: AppColors.greyColorText,
          size: 30.r,
        ),
      ),
    );
  }
}

class SearchFieldBar extends StatelessWidget {
  const SearchFieldBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: size(context, 272.w, webWidth(272.w)),
        child: const SearchField());
  }
}
