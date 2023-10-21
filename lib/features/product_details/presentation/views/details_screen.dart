import 'package:ecommerce/core/utils/resposive_size_config.dart';
import 'package:ecommerce/core/utils/styles.dart';
import 'package:ecommerce/features/product_details/presentation/views/widgets/container_section.dart';
import 'package:ecommerce/features/product_details/presentation/views/widgets/appbar_and_Images_sec_section.dart';
import 'package:flutter/material.dart';
import 'package:ecommerce/core/widgets/custom_button.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProductDetailsScreen extends StatelessWidget {
  const ProductDetailsScreen(
      {Key? key,
      required this.image,
      required this.title,
      required this.description,
      required this.price})
      : super(key: key);
  final String image;
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
              AppBarAndImagesSec(image: image),
              SizedBox(
                height: SizeConfig.height(context, 0.01),
              ),
              Padding(
                padding: EdgeInsets.all(15.w),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          title,
                          style: Styles.textStyle20,
                        ),
                        Text(
                          '\$ $price',
                          style: Styles.textStyle20,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: SizeConfig.height(context, 0.01),
                    ),
                    Text(
                      description,
                      style: Styles.textStyle14.copyWith(
                        color: Colors.grey,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    SizedBox(
                      height: SizeConfig.height(context, 0.02),
                    ),
                    Text(
                      'Color Available',
                      style: Styles.textStyle20,
                    ),
                    SizedBox(
                      height:SizeConfig.height(context, 0.02),
                    ),
                    SizedBox(
                      height:SizeConfig.height(context, 0.08),
                      child: ListView.separated(
                        physics: const BouncingScrollPhysics(),
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) {
                          return ContainerSection(image: image);
                        },
                        separatorBuilder: (context, index) {
                          return SizedBox(
                            width: SizeConfig.width(context, 0.06),
                          );
                        } ,
                        itemCount: 4,
                      ),
                    ),
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
