import 'package:ecommerce/core/utils/resposive_size_config.dart';
import 'package:ecommerce/core/utils/styles.dart';
import 'package:flutter/material.dart';

class TitlePriceDescriptionSec extends StatelessWidget {
  const TitlePriceDescriptionSec({Key? key, required this.title, required this.description, required this.price}) : super(key: key);
  final String title;
  final String description;
  final int price;

  @override
  Widget build(BuildContext context) {
    return  Column(
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
              overflow: TextOverflow.ellipsis,
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
      ],
    );
  }
}
