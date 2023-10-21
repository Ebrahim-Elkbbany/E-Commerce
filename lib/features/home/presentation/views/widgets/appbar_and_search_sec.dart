import 'package:ecommerce/core/utils/resposive_size_config.dart';
import 'package:ecommerce/core/utils/styles.dart';
import 'package:ecommerce/core/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppBarAndSearchSec extends StatelessWidget {
  const AppBarAndSearchSec({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 15.w),
      child: Column(
        children: [
          Row(
            children: [
              CircleAvatar(
                backgroundImage: const NetworkImage(
                  "https://t3.ftcdn.net/jpg/02/99/04/20/360_F_299042079_vGBD7wIlSeNl7vOevWHiL93G4koMM967.jpg",
                ),
                minRadius: 25.w,
              ),
              SizedBox(
                width: SizeConfig.width(context, 0.03),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Hello',
                    style: Styles.textStyle14.copyWith(color: Colors.grey),
                  ),
                  Text(
                    'Krishna SN',
                    style: Styles.textStyle14,
                  ),
                ],
              ),
              const Spacer(),
              const Icon(Icons.notifications),
              SizedBox(
                width: SizeConfig.width(context, 0.04),
              ),
              const Icon(Icons.format_list_bulleted),
            ],
          ),
          SizedBox(
            height: SizeConfig.height(context, 0.03),
          ),
          CustomTextFormField(
            hintText: "Search For brand",
            prefix: Icons.search_outlined,
            boarderRadius: 12.w,
            prefixColor: Colors.grey,
          ),
          SizedBox(
            height: SizeConfig.height(context, 0.03),
          ),
        ],
      ),
    );
  }
}
