import 'package:ecommerce/app_bloc_observer.dart';
import 'package:ecommerce/core/utils/theme.dart';
import 'package:ecommerce/features/home/presentation/manager/home_cubit/home_cubit.dart';
import 'package:ecommerce/features/home/presentation/views/home_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  Bloc.observer = AppBlocObserver();
  runApp(const EcommerceApp());
}

class EcommerceApp extends StatelessWidget {
  const EcommerceApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => HomeCubit()..getCategory()..getProducts(),
      child: ScreenUtilInit(
        builder: (_, child) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            theme: lightTheme,
            home: child,
          );
        },
        child: const HomeView(),
      ),
    );
  }
}
