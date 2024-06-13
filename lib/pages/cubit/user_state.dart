part of 'user_cubit.dart';

abstract class UserState {}

final class UserInitial extends UserState {}

final class SignUpSuccess extends UserState {}

final class SignUpLoading extends UserState {}

final class SignUpFailure extends UserState {
  final String errMessage;

  SignUpFailure({required this.errMessage});
}

final class SignInSuccess extends UserState {}
final class SendCodeLoading extends UserState {}
final class VerifyCodeLoading extends UserState {}
final class VerifyCodeSuccess extends UserState {}
final class VerifyCodeFailure extends UserState {  
  final String errMessage;

  VerifyCodeFailure({required this.errMessage});
}
final class SendCodeSuccess extends UserState {}

final class SignInLoading extends UserState {}

final class SignInFailure extends UserState {
  final String errMessage;

  SignInFailure({required this.errMessage});
}
