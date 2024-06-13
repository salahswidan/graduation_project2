import 'package:ui_screens/pages/core/api/end_ponits.dart';

class SignInModel {
  final String emailVerification;

  SignInModel({ required this.emailVerification});

  factory SignInModel.fromJson(Map<String, dynamic> jsonData) {
    return SignInModel(
      emailVerification: jsonData ["resetCode"],
    );
  }
}
