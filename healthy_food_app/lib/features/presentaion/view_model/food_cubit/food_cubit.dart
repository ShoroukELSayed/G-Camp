import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../food_model.dart';

abstract class FoodState {}

class FoodInitial extends FoodState {}

class FoodLoading extends FoodState {}

class FoodLoaded extends FoodState {
  final List<FoodModel> foodItems;
  FoodLoaded(this.foodItems);
}

class FoodError extends FoodState {
  final String message;
  FoodError(this.message);
}

class FoodCubit extends Cubit<FoodState> {
  final _dio = Dio();
  FoodCubit() : super(FoodInitial());

  Future<List<FoodModel>> _fetchFood() async {
    Response response = await _dio.get(
      'https://the-vegan-recipes-db.p.rapidapi.com',
      options: Options(
        headers: {
          'X-RapidAPI-Key':
              '4c47bd5b77msh3f6acd65269f18bp19bb01jsn04ab535b84f8',
          'X-RapidAPI-Host': 'the-vegan-recipes-db.p.rapidapi.com'
        },
      ),
    );
    List json = response.data;
    List<FoodModel> foodModels =
        List.generate(json.length, (index) => FoodModel.fromJson(json[index]));
    return foodModels;
  }

  Future<void> fetchFoodItems() async {
    try {
      emit(FoodLoading());
      final foodItems = await _fetchFood();
      emit(FoodLoaded(foodItems));
    } catch (error) {
      emit(FoodError(error.toString()));
    }
  }
}
