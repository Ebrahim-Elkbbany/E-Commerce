import 'package:ecommerce/core/utils/resposive_size_config.dart';
import 'package:ecommerce/core/utils/styles.dart';
import 'package:ecommerce/core/widgets/custom_text_button.dart';
import 'package:ecommerce/features/home/presentation/views/widgets/appbar_and_search_sec.dart';
import 'package:ecommerce/features/home/presentation/views/widgets/category_container.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(vertical: 15.h),
        child: Column(
          children: [
            const AppBarAndSearchSec(),
            Image.asset(
              'assets/images/img.png',
              fit: BoxFit.fill,
              width: double.infinity,
            ),
            SizedBox(
              height: 45.h,
              child: ListView.separated(
                padding: EdgeInsetsDirectional.only(
                    start: 15.w, top: 15.h,),
                physics: const BouncingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) => const CategoryContainer(),
                separatorBuilder: (context, index) => SizedBox(
                  width: SizeConfig.width(context, 0.02),
                ),
                itemCount: 10,
              ),
            ),
            Padding(
              padding:  EdgeInsets.all(15.h),
              child: Row(
                children: [
                  Text(
                    'New Arrival',
                    style: Styles.textStyle18.copyWith(fontWeight: FontWeight.bold),
                  ),
                  const Spacer(),
                  CustomTextButton(
                    text: 'See All',
                    onPressed: () {},
                    textStyle: Styles.textStyle12.copyWith(color: Colors.black54),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
