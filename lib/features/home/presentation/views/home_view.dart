import 'package:ecommerce/features/home/presentation/views/widgets/appbar_and_search_sec.dart';
import 'package:ecommerce/features/home/presentation/views/widgets/categories_sec.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
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
              const CategoriesAndProductsSec(),
            ],
          ),
        ),
      ),
    );
  }
}
