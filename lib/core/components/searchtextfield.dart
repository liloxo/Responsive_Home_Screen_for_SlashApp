import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iconsax/iconsax.dart';
import 'package:responsive_home_screen_for_slashapp/core/constants/colors.dart';
import 'package:responsive_home_screen_for_slashapp/core/theme/textstyles.dart';

class SearchField extends StatelessWidget {
  final void Function(String)? onChanged;
  const SearchField({super.key, this.onChanged});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onChanged: onChanged,
      decoration: InputDecoration(
          prefixIcon: Icon(
            Iconsax.search_normal,
            size: 20.r,
          ),
          hintText: 'Search here..',
          contentPadding: EdgeInsets.only(top: 2.h),
          hintStyle: TextStyles.textStyleTwo.copyWith(
            color: AppColors.greyColorText,
          ),
          border: OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.circular(10)),
          filled: true,
          fillColor: Colors.grey[200]),
    );
  }
}
