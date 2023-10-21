import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ContainerSection extends StatelessWidget {
  const ContainerSection({
    super.key,
    required this.image,
  });

  final String image;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70.h,
      width: 65.w,
      alignment: Alignment.center,
      clipBehavior: Clip.antiAliasWithSaveLayer,
      decoration: BoxDecoration(
        border: Border.all(
            color: Colors.black, style: BorderStyle.solid, width: 1.w),
        borderRadius: BorderRadius.circular(8.w),
      ),
      child: Image.network(
        image,
        fit: BoxFit.fill,
        width: double.infinity,
      ),
    );
  }
}
