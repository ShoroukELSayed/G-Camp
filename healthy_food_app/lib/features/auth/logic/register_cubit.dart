import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:healthy_food_app/core/services/api_services.dart';
import 'package:healthy_food_app/core/services/register_request.dart';

class RegisterCubit extends Cubit<RegisterState> {
  final ApiServices _apiServices;

  RegisterCubit(this._apiServices) : super(RegisterInitial());

  Future<void> registerUser(RegisterRequest request) async {
    emit(RegisterLoading());
    try {
      final token = await _apiServices.registerUser(request);
      emit(RegisterSuccess(token));
    } catch (error) {
      emit(RegisterError(error.toString()));
    }
  }
}

abstract class RegisterState {}

class RegisterInitial extends RegisterState {}

class RegisterLoading extends RegisterState {}

class RegisterSuccess extends RegisterState {
  final String token;
  RegisterSuccess(this.token);
}

class RegisterError extends RegisterState {
  final String message;
  RegisterError(this.message);
}
