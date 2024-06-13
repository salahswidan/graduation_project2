import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:jwt_decoder/jwt_decoder.dart';
import 'package:ui_screens/pages/cache/cache_helper.dart';
import 'package:ui_screens/pages/core/api/api_consumer.dart';
import 'package:ui_screens/pages/core/api/end_ponits.dart';
import 'package:ui_screens/pages/core/errors/error_model.dart';
import 'package:ui_screens/pages/core/errors/exceptions.dart';
import 'package:ui_screens/pages/core/models/sign_in_model.dart';
import 'package:ui_screens/pages/core/repositories/user_repository.dart';

part 'user_state.dart';

class UserCubit extends Cubit<UserState> {
  UserCubit(this.api) : super(UserInitial());
  final ApiConsumer api;

  SignInModel? user;

  signIn({required String email, required String password}) async {
    try {
      emit(SignInLoading());
      final response = await api.post(
        EndPoint.signIn,
        data: {
          ApiKey.email: email,
          ApiKey.password: password,
        },
      );
      user = SignInModel.fromJson(response);
      final decodedToken = JwtDecoder.decode(user!.token);
      CacheHelper().saveData(key: ApiKey.token, value: user!.token);
      CacheHelper()
          .saveData(key: ApiKey.userId, value: decodedToken[ApiKey.userId]);
      emit(SignInSuccess());
    } on ServerException catch (e) {
      emit(SignInFailure(errMessage: e.errModel.errorMessage));
    }
  }

  signUp(
      {required String name,
      required String email,
      required String password,
      required String confirmPassword}) async {
    try {
      emit(SignUpLoading());
      final response = await api.post(
        EndPoint.signUp,
        data: {
          ApiKey.name: name,
          ApiKey.email: email,
          ApiKey.password: password,
          ApiKey.confirmPassword: confirmPassword,
        },
      );
      print(response);
      emit(SignUpSuccess());
    } on ServerException catch (e) {
      emit(SignUpFailure(errMessage: e.errModel.errorMessage));
    }
  }

  sendCode({required String email}) async {
    try {
      emit(SendCodeLoading());
      final Response response = await api.post(
        EndPoint.sendCode,
        data: {
          ApiKey.email: email,
        },
      );
      emit(SendCodeSuccess());
      print(response);
    } catch (e) {
      print(e.toString());
    }
  }

        verfiyCode({required String code}) async {
    try {
      emit(VerifyCodeLoading());
      final response = await api.post(
        EndPoint.verifyCode,
        data: {
          "resetCode": code,
        },
      );
      emit(VerifyCodeSuccess());
      print(response);
    } on ServerException catch (e) {
      emit(VerifyCodeFailure(errMessage: e.errModel.errorMessage));
    }
  }
}
