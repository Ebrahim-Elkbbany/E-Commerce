part of 'home_cubit.dart';

@immutable
abstract class HomeState {}

class HomeInitial extends HomeState {}

class HomeCategoryLoading extends HomeState {}
class HomeCategorySuccess extends HomeState {
  final   List<CategoryModel> categoryList;
  HomeCategorySuccess(this.categoryList);
}
class HomeCategoryFailure extends HomeState {
  final String errorMessage ;
  HomeCategoryFailure(this.errorMessage);
}

class HomeProductLoading extends HomeState {}
class HomeProductSuccess extends HomeState {
  final List<ProductModel> productsList;
  HomeProductSuccess(this.productsList);
}
class HomeProductFailure extends HomeState {
  final String errorMessage ;
  HomeProductFailure(this.errorMessage);
}

class ChangeCategoryState extends HomeState {}

