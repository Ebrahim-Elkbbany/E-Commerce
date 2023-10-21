import 'package:ecommerce/core/utils/resposive_size_config.dart';
import 'package:ecommerce/core/utils/styles.dart';
import 'package:ecommerce/features/product_details/presentation/views/widgets/container_section.dart';
import 'package:flutter/material.dart';

class ColorAvailableSec extends StatelessWidget {
  const ColorAvailableSec(this.images, {Key? key}) : super(key: key);
  final List<String> images;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'Color Available',
          style: Styles.textStyle20,
        ),
        SizedBox(
          height: SizeConfig.height(context, 0.02),
        ),
        SizedBox(
          height: SizeConfig.height(context, 0.08),
          child: ListView.separated(
            physics: const BouncingScrollPhysics(),
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return ContainerSection(image: images[0]);
            },
            separatorBuilder: (context, index) {
              return SizedBox(
                width: SizeConfig.width(context, 0.06),
              );
            },
            itemCount: 4,
          ),
        ),
      ],
    );
  }
}
