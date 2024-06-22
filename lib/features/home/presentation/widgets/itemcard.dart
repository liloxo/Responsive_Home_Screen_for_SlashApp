import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:responsive_home_screen_for_slashapp/core/constants/colors.dart';
import 'package:responsive_home_screen_for_slashapp/core/responsive/responsive_size.dart';
import 'package:responsive_home_screen_for_slashapp/core/theme/textstyles.dart';
import 'package:responsive_home_screen_for_slashapp/features/home/domain/entities/items/items.dart';

class ItemCard extends StatelessWidget {
  final Item item;
  const ItemCard({
    super.key,
    required this.item,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 10.h),
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(8.r)),
      height: size(context, 170.h, webHeight(170.h)),
      width: size(context, 124.w, 130.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              Container(
                  height: size(context, 116.h, webHeight(116.h)),
                  width: size(context, 124.w, webWidth(124.w)),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8.r),
                      image: DecorationImage(
                          image: AssetImage(item.image), fit: BoxFit.fill))),
              Positioned(
                  top: 6.r,
                  right: 3.r,
                  child: const CircleAvatar(
                      backgroundColor: AppColors.arrowcategories,
                      child: Icon(Icons.favorite_border)))
            ],
          ),
          Container(
              margin: EdgeInsets.only(top: 8.h, bottom: 8.h),
              height: size(context, 35.h, 24.h),
              child: Text(
                item.name,
                style: TextStyles.textStyleTwo
                    .copyWith(fontSize: 16.sp, color: AppColors.dot),
              )),
          SizedBox(
              height: size(context, 35.h, webHeight(24.h)),
              child: Text(
                item.price.toString(),
                style: TextStyles.textStyleOne.copyWith(fontSize: 16.sp),
              )),
        ],
      ),
    );
  }
}
