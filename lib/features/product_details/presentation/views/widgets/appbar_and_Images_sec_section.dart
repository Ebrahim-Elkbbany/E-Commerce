import 'package:ecommerce/core/utils/resposive_size_config.dart';
import 'package:ecommerce/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppBarAndImagesSec extends StatelessWidget {
  const AppBarAndImagesSec({
    super.key, required this.image,
  });
  final String image;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding:  EdgeInsets.symmetric(horizontal: 10.w),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: const Icon(
                  Icons.arrow_back_ios_new,
                ),
              ),
              Text(
                'Details',
                style: Styles.textStyle20,
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.favorite_outline,
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height:SizeConfig.height(context, 0.01),
        ),
        SizedBox(
          height:SizeConfig.height(context, 0.5),
          width: double.infinity,
          child: Image.network(
            image,
            fit: BoxFit.fill,
          ),
        ),
      ],
    );
  }
}
