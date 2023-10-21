import 'package:ecommerce/constant.dart';
import 'package:ecommerce/core/utils/resposive_size_config.dart';
import 'package:ecommerce/core/widgets/custom_circular_indicator.dart';
import 'package:ecommerce/core/widgets/custom_error_widget.dart';
import 'package:ecommerce/features/home/presentation/manager/home_cubit/home_cubit.dart';
import 'package:ecommerce/features/home/presentation/views/widgets/category_container.dart';
import 'package:ecommerce/features/home/presentation/views/widgets/products_sec.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CategoriesAndProductsSec extends StatelessWidget {
  const CategoriesAndProductsSec({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeState>(
      builder: (context, state) {
        var cubit = HomeCubit.get(context);
        if (state is HomeProductSuccess ||
            state is HomeCategorySuccess ||
            state is ChangeCategoryState) {
          return Column(
            children: [
              SizedBox(
                height: SizeConfig.height(context, 0.09),
                child: ListView.separated(
                  padding: EdgeInsetsDirectional.only(
                    start: 15.w,
                    top: 15.h,
                    bottom: 15.h,
                  ),
                  physics: const BouncingScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) => CategoryContainer(
                    onTap: () {
                      cubit.changeCategory(index);
                      cubit.getProducts();
                    },
                    name: cubit.categoryList[index].name!,
                    color: cubit.indexCategory == index
                        ? kPrimaryColor
                        : Colors.grey[200]!,
                    fontColor: cubit.indexCategory == index
                        ? Colors.white
                        : Colors.black54,
                  ),
                  separatorBuilder: (context, index) => SizedBox(
                    width: SizeConfig.width(context, 0.02),
                  ),
                  itemCount: cubit.categoryList.length,
                ),
              ),
              ProductsSec(cubit: cubit),
            ],
          );
        } else if (state is HomeCategoryFailure &&
            state is HomeProductFailure) {
          return CustomErrorWidget(errorMessage: state.errorMessage);
        } else {
          return Padding(
            padding: EdgeInsets.only(top: 150.h),
            child: const CustomCircularIndicator(),
          );
        }
      },
    );
  }
}
