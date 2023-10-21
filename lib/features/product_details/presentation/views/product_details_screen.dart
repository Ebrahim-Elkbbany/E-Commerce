import 'package:ecommerce/core/utils/resposive_size_config.dart';
import 'package:ecommerce/features/product_details/presentation/views/widgets/color_available_sec.dart';
import 'package:ecommerce/features/product_details/presentation/views/widgets/appbar_and_Images_sec_section.dart';
import 'package:ecommerce/features/product_details/presentation/views/widgets/title_price_description_sec.dart';
import 'package:flutter/material.dart';
import 'package:ecommerce/core/widgets/custom_button.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProductDetailsScreen extends StatelessWidget {
  const ProductDetailsScreen(
      {Key? key,
      required this.images,
      required this.title,
      required this.description,
      required this.price})
      : super(key: key);
  final List<String> images;
  final String title;
  final String description;
  final int price;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Padding(
          padding: EdgeInsets.only(bottom: 15.h, top: 10.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AppBarAndImagesSec(images: images),
              SizedBox(
                height: SizeConfig.height(context, 0.01),
              ),
              Padding(
                padding: EdgeInsets.all(15.w),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TitlePriceDescriptionSec(
                      title: title,
                      description: description,
                      price: price,
                    ),
                    SizedBox(
                      height: SizeConfig.height(context, 0.02),
                    ),
                    ColorAvailableSec(images),
                    SizedBox(
                      height: SizeConfig.height(context, 0.03),
                    ),
                    CustomButton(
                      buttonName: 'Buy Now',
                      onPressed: () {},
                      height: 45.h,
                      radius: 15.w,
                    ),
                    SizedBox(
                      height: SizeConfig.height(context, 0.01),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
