import 'package:ecommerce/constant.dart';
import 'package:ecommerce/core/utils/resposive_size_config.dart';
import 'package:ecommerce/features/home/presentation/manager/home_cubit/home_cubit.dart';
import 'package:ecommerce/features/home/presentation/views/widgets/category_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CategoriesSec extends StatelessWidget {
  const CategoriesSec({Key? key, required this.cubit}) : super(key: key);
  final HomeCubit cubit;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
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
          onTap: (){
            cubit.changeCategory(index);
            cubit.getProducts();
          },
          name: cubit.categoryList[index].name!,
          color: cubit.indexCategory == index ? kPrimaryColor :Colors.grey[200]! ,
          fontColor:  cubit.indexCategory == index ? Colors.white :Colors.black54 ,
        ),
        separatorBuilder: (context, index) => SizedBox(
          width: SizeConfig.width(context, 0.02),
        ),
        itemCount: cubit.categoryList.length,
      ),
    ) ;
  }
}
