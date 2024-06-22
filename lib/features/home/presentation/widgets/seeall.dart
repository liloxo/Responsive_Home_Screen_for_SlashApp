import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:responsive_home_screen_for_slashapp/core/constants/colors.dart';
import 'package:responsive_home_screen_for_slashapp/core/responsive/responsive_size.dart';
import 'package:responsive_home_screen_for_slashapp/core/theme/textstyles.dart';

class SeeAll extends StatelessWidget {
  final String field;
  const SeeAll({
    super.key,
    required this.field,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 15.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            width: size(context, 240.w, 240.w),
            child: Text(
              field,
              style: TextStyles.textStyleThree,
            ),
          ),
          Row(
            children: [
              Text(
                'See all',
                style: TextStyles.textStyleTwo.copyWith(
                    fontWeight: FontWeight.w500, color: AppColors.dot),
              ),
              Container(
                margin: EdgeInsets.only(left: 10.w),
                height: size(context, 20.h, 20.h),
                width: size(context, 20.w, 20.w),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4),
                    color: AppColors.arrowcategories),
                child: InkWell(
                  onTap: () {},
                  child: Icon(
                    Icons.arrow_forward_ios,
                    color: AppColors.dot,
                    size: 15.r,
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
