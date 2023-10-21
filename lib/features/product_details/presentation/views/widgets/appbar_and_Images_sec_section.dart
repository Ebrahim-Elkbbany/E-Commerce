import 'package:ecommerce/core/utils/resposive_size_config.dart';
import 'package:ecommerce/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class AppBarAndImagesSec extends StatelessWidget {
  const AppBarAndImagesSec({
    super.key, required this.images,
  });
  final List<String> images;

  @override
  Widget build(BuildContext context) {
    PageController controller = PageController();
    return Column(
      children: [
        Padding(
          padding:  EdgeInsets.symmetric(horizontal: 10.w),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: const Icon(
                  Icons.arrow_back_ios_new,
                ),
              ),
              Text(
                'Details',
                style: Styles.textStyle20,
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.favorite_outline,
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height:SizeConfig.height(context, 0.01),
        ),
        SizedBox(
          height:SizeConfig.height(context, 0.5),
          width: double.infinity,
          child: Stack(
            alignment: Alignment.centerLeft,
            children:[
              PageView.builder(
                itemCount: images.length,
                itemBuilder: (context, index) => Image.network(
                  images[index],
                  fit: BoxFit.fill,
                ),
                scrollDirection: Axis.vertical,
                controller: controller,
              ),
              Positioned(
                left: MediaQuery.of(context).size.width * 0.025,
                child: SmoothPageIndicator(
                  axisDirection: Axis.vertical,
                  count: 3,
                  effect:  SlideEffect(
                    dotColor: Colors.grey,
                    dotHeight: 7.h,
                    dotWidth: 7.w,
                    spacing: 6.h,
                    activeDotColor: Colors.black45,
                  ), controller: controller,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
