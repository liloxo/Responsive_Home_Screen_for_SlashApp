import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iconsax/iconsax.dart';
import 'package:responsive_home_screen_for_slashapp/core/responsive/responsive_size.dart';
import 'package:responsive_home_screen_for_slashapp/core/theme/textstyles.dart';

class SlashRow extends StatelessWidget {
  const SlashRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size(context, 80.h, webHeight(50.h)),
      margin: EdgeInsets.symmetric(vertical: 5.h, horizontal: 22.w),
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [Slash(), CityLocation(), Notifications()],
      ),
    );
  }
}

class Notifications extends StatelessWidget {
  const Notifications({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Icon(
          Iconsax.notification,
          size: 30.r,
        ),
        Positioned(
          top: 0,
          right: 0,
          child: Container(
            width: 13.h,
            height: 13.w,
            decoration: const BoxDecoration(
              color: Colors.red,
              shape: BoxShape.circle,
            ),
          ),
        ),
      ],
    );
  }
}

class CityLocation extends StatelessWidget {
  const CityLocation({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Row(
        children: [
          const Icon(Iconsax.location5),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 7.w),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Nasr City',
                  style: TextStyles.textStyleTwo.copyWith(color: Colors.black),
                ),
                Text(
                  'Cairo',
                  style: TextStyles.textStyleOne,
                )
              ],
            ),
          ),
          Icon(
            Icons.keyboard_arrow_down,
            size: 30.r,
            color: Colors.grey,
          ),
        ],
      ),
    );
  }
}

class Slash extends StatelessWidget {
  const Slash({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 60.w,
      child: Text(
        'Slash.',
        style: TextStyles.textStyleOne.copyWith(fontSize: 20.sp),
      ),
    );
  }
}
