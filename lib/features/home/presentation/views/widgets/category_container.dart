import 'package:ecommerce/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CategoryContainer extends StatelessWidget {
  const CategoryContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Container(
      height: 30.h,
      width: 100.w,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: Colors.grey[200],
        borderRadius: BorderRadius.circular(16.w),
      ),
      child: Text(
        'All Product',
        style: Styles.textStyle14.copyWith(
          color: Colors.black54,
          fontWeight: FontWeight.w400,
        ),
      ),
    );
  }
}
