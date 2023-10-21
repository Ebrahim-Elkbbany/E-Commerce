import 'package:ecommerce/core/utils/functions/navigate.dart';
import 'package:ecommerce/core/utils/resposive_size_config.dart';
import 'package:ecommerce/core/utils/styles.dart';
import 'package:ecommerce/core/widgets/custom_text_button.dart';
import 'package:ecommerce/features/home/presentation/manager/home_cubit/home_cubit.dart';
import 'package:ecommerce/features/home/presentation/views/widgets/product_container.dart';
import 'package:ecommerce/features/product_details/presentation/views/details_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProductSec extends StatelessWidget {
  const ProductSec({Key? key, required this.cubit}) : super(key: key);
  final HomeCubit cubit;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 15.h,
          ),
          child: Row(
            children: [
              Text(
                'New Arrival',
                style: Styles.textStyle18.copyWith(
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Spacer(),
              CustomTextButton(
                text: 'See All',
                onPressed: () {},
                textStyle: Styles.textStyle12.copyWith(
                  color: Colors.black54,
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: SizeConfig.height(context, 0.37),
          child: ListView.separated(
            padding: EdgeInsetsDirectional.only(
              start: 15.w,
              top: 15.w,
              bottom: 15.w,
            ),
            physics: const BouncingScrollPhysics(),
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) =>  ProductContainer(
              image: cubit.productList[index].images![0],
              title: cubit.productList[index].title!,
              price: cubit.productList[index].price!,
              description: cubit.productList[index].description!,
            ),
            separatorBuilder: (context, index) => SizedBox(
              width: SizeConfig.width(context, 0.05),
            ),
            itemCount: cubit.productList.length,
          ),
        ),
      ],
    );
  }
}
