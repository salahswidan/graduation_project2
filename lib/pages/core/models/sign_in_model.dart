import 'package:ui_screens/pages/core/api/end_ponits.dart';

class SignInModel {
  final String token;

  SignInModel({ required this.token});

  factory SignInModel.fromJson(Map<String, dynamic> jsonData) {
    return SignInModel(
      token: jsonData [ApiKey.token],
    );
  }
}
