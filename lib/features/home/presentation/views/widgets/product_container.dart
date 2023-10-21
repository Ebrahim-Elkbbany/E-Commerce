import 'package:ecommerce/constant.dart';
import 'package:ecommerce/core/utils/functions/navigate.dart';
import 'package:ecommerce/core/utils/styles.dart';
import 'package:ecommerce/features/product_details/presentation/views/product_details_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProductContainer extends StatelessWidget {
  const ProductContainer(
      {Key? key,
      required this.images,
      required this.title,
      required this.description,
      required this.price,
      this.onTap})
      : super(key: key);
  final List<String> images;
  final String title;
  final String description;
  final int price;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        navigateTo(
          context,
          ProductDetailsScreen(
            images: images,
            title: title,
            description: description,
            price: price,
          ),
        );
      },
      child: Container(
        padding: EdgeInsetsDirectional.all(8.w),
        width: 160.w,
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 1,
              blurRadius: 1,
              offset: const Offset(0, 1),
            ),
          ],
          borderRadius: BorderRadius.circular(16.w),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image.network(
              images[0],
              fit: BoxFit.contain,
              height: 100.h,
            ),
            Text(
              title,
              style: Styles.textStyle14,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
            Text(description,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: Styles.textStyle12
                    .copyWith(fontWeight: FontWeight.bold)
                    .copyWith(color: Colors.grey)),
            Row(
              children: [
                SizedBox(
                  width: 100.w,
                  child: Text(
                    '\$ $price',
                    overflow: TextOverflow.ellipsis,
                    maxLines: 1,
                    style:
                        Styles.textStyle18.copyWith(fontWeight: FontWeight.w900),
                  ),
                ),
                const Spacer(),
                Container(
                  padding: EdgeInsetsDirectional.all(3.w),
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(2.w),
                    color: kPrimaryColor,
                  ),
                  child: Icon(Icons.add, color: Colors.white, size: 15.w),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }

}
