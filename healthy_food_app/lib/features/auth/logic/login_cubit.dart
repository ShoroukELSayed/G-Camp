import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:healthy_food_app/core/services/api_services.dart';
import 'package:healthy_food_app/core/services/login_request.dart';

class LoginCubit extends Cubit<LoginState> {
  final ApiServices _apiServices;

  LoginCubit(this._apiServices) : super(LoginInitial());

  Future<void> loginUser(LoginRequest request) async {
    emit(LoginLoading());
    try {
      final token = await _apiServices.loginUser(request);
      emit(LoginSuccess(token));
    } catch (error) {
      emit(LoginError(error.toString()));
    }
  }
}

abstract class LoginState {}

class LoginInitial extends LoginState {}

class LoginLoading extends LoginState {}

class LoginSuccess extends LoginState {
  final String token;
  LoginSuccess(this.token);
}

class LoginError extends LoginState {
  final String message;
  LoginError(this.message);
}
