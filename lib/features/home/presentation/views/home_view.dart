import 'package:ecommerce/core/widgets/custom_circular_indicator.dart';
import 'package:ecommerce/core/widgets/custom_error_widget.dart';
import 'package:ecommerce/features/home/presentation/manager/home_cubit/home_cubit.dart';
import 'package:ecommerce/features/home/presentation/views/widgets/appbar_and_search_sec.dart';
import 'package:ecommerce/features/home/presentation/views/widgets/categories_sec.dart';
import 'package:ecommerce/features/home/presentation/views/widgets/products_sec.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: BlocBuilder<HomeCubit, HomeState>(
        builder: (context, state) {
          var cubit =HomeCubit.get(context);
          if(state is HomeProductSuccess || state is HomeCategorySuccess  || state is ChangeCategoryState){
            return SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 15.h),
                child: Column(
                  children: [
                    const AppBarAndSearchSec(),
                    Image.asset(
                      'assets/images/img.png',
                      fit: BoxFit.fill,
                      height: 180.h,
                      width: double.infinity,
                    ),
                    CategoriesSec(cubit: cubit),
                    ProductSec(cubit: cubit,),
                  ],
                ),
              ),
            );
          }else if(state is HomeCategoryFailure  && state is HomeProductFailure){
            return const CustomErrorWidget(errorMessage:'Some thing is wrong Please, try again');
          }else{
           return const CustomCircularIndicator();
          }
        },
      ),
    );
  }
}
