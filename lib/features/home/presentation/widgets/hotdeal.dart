import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:responsive_home_screen_for_slashapp/core/constants/colors.dart';
import 'package:responsive_home_screen_for_slashapp/core/responsive/responsive_size.dart';

class HotDeal extends StatefulWidget {
  const HotDeal({super.key});

  @override
  State<HotDeal> createState() => _HotDealState();
}

class _HotDealState extends State<HotDeal> {
  final PageController _pageController = PageController(viewportFraction: 0.85);
  int _currentPage = 0;
  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  List<Widget> deals = [const BlackFriday(), const RedContainer()];
  @override
  Widget build(BuildContext context) {
    return Container(
      margin:
          EdgeInsets.symmetric(vertical: size(context, 20.h, webHeight(15.h))),
      height: size(context, 153.h, webHeight(160.h)),
      width: size(context, 327.w, 600.w),
      child: Column(
        children: [
          Expanded(
            child: SizedBox(
              height: size(context, 130.h, webHeight(140.h)),
              child: PageView.builder(
                controller: _pageController,
                itemCount: deals.length,
                onPageChanged: (int index) {
                  setState(() {
                    _currentPage = index;
                  });
                },
                itemBuilder: (context, i) {
                  return deals[i];
                },
              ),
            ),
          ),
          Container(
            height: 7.h,
            margin: EdgeInsets.only(top: 14.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(deals.length, (index) {
                return AnimatedContainer(
                  duration: const Duration(milliseconds: 300),
                  margin: EdgeInsets.symmetric(horizontal: 3.w),
                  width: _currentPage == index ? 14.w : 7.w,
                  height: 7.h,
                  decoration: BoxDecoration(
                    color: _currentPage == index
                        ? AppColors.dot
                        : AppColors.greyColor,
                    borderRadius: BorderRadius.circular(3.5),
                  ),
                );
              }),
            ),
          ),
        ],
      ),
    );
  }
}

class RedContainer extends StatelessWidget {
  const RedContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 14.w, top: 8.h, bottom: 8.h),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: AppColors.hotdealred,
      ),
      height: size(context, 116.h, 116.h),
      width: size(context, 327.w, 327.w),
    );
  }
}

class BlackFriday extends StatelessWidget {
  const BlackFriday({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(8),
      child: Image.asset(
        'assets/images/blackfriday.png',
        height: size(context, 132.h, webHeight(132.h)),
        fit: BoxFit.fill,
      ),
    );
  }
}
