import 'package:bloc/bloc.dart';
import 'package:ecommerce/core/utils/api_service.dart';
import 'package:ecommerce/features/home/data/models/category_model.dart';
import 'package:ecommerce/features/home/data/models/product_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';

part 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit() : super(HomeInitial());

  static HomeCubit get(context){
    return BlocProvider.of(context);
  }
  List<CategoryModel> categoryList=[];
  List<ProductModel> productList=[];



  int  categoryNum =1;
  int indexCategory = 0;
  void changeCategory(int index) {
    indexCategory = index;
    categoryNum= categoryList[index].id!;
    emit(ChangeCategoryState());
  }
  Future<void> getCategory() async {
    emit(HomeCategoryLoading());
    await ApiService().get(endPoint:'categories').then((value){
      for (int i = 0; i < value.length; i++) {
        categoryList.add(CategoryModel.fromJson(value[i]));
      }
      emit(HomeCategorySuccess(categoryList));
    }).catchError(
      (e) {
        print(e.toString());
        emit(
          HomeCategoryFailure(e.toString()),
        );
      },
    );
  }
  Future<void> getProducts() async {
    emit(HomeProductLoading());
    await ApiService().get(endPoint:'categories/$categoryNum/products').then((value){
      productList.clear();
      for (int i = 0; i < value.length; i++) {
        productList.add(ProductModel.fromJson(value[i]));
      }
      print(categoryNum);
      emit(HomeProductSuccess(productList));
    }).catchError(
      (e) {
        print(e.toString());
        emit(
          HomeProductFailure(e.toString()),
        );
      },
    );
  }

}
