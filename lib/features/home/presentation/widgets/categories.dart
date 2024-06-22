import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsive_home_screen_for_slashapp/core/constants/colors.dart';
import 'package:responsive_home_screen_for_slashapp/core/responsive/responsive_size.dart';
import 'package:responsive_home_screen_for_slashapp/core/theme/textstyles.dart';
import 'package:responsive_home_screen_for_slashapp/features/home/data/data_sources/category/categorylist.dart';
import 'package:responsive_home_screen_for_slashapp/features/home/presentation/widgets/seeall.dart';

class Categories extends StatelessWidget {
  const Categories({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size(context, 200.h, webHeight(148.h)),
      margin: EdgeInsets.symmetric(horizontal: 22.w),
      child: const SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SeeAll(
              field: 'Categories',
            ),
            CategoryCards()
          ],
        ),
      ),
    );
  }
}

class CategoryCards extends StatelessWidget {
  const CategoryCards({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: size(context, 140.h, webHeight(99.h)),
      child: ListView.separated(
        padding: EdgeInsets.zero,
        scrollDirection: Axis.horizontal,
        itemCount: categoryList.length,
        itemBuilder: (context, i) {
          return CategoryCard(
              assetName: categoryList[i].image!,
              categoryname: categoryList[i].name!);
        },
        separatorBuilder: (BuildContext context, int index) {
          return SizedBox(
            width: 10.w,
          );
        },
      ),
    );
  }
}

class CategoryCard extends StatelessWidget {
  final String assetName;
  final String categoryname;
  const CategoryCard({
    super.key,
    required this.assetName,
    required this.categoryname,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: size(context, 72.h, 90.h),
          width: size(context, 73.w, 100.w),
          margin: EdgeInsets.only(bottom: 10.h),
          child: CircleAvatar(
            radius: 150.r,
            backgroundColor: AppColors.dot,
            child: SizedBox(
                height: size(context, 30.h, 35.h),
                width: size(context, 30.w, 35.w),
                child: SvgPicture.asset(assetName)),
          ),
        ),
        SizedBox(
          height: 35.h,
          child: Text(
            categoryname,
            style: TextStyles.textStyleTwo.copyWith(color: AppColors.dot),
          ),
        )
      ],
    );
  }
}
