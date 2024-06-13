// import 'dart:math';

// import 'package:dartz/dartz.dart';
// import 'package:dio/dio.dart';
// import 'package:jwt_decoder/jwt_decoder.dart';
// import 'package:ui_screens/pages/cache/cache_helper.dart';
// import 'package:ui_screens/pages/core/api/api_consumer.dart';
// import 'package:ui_screens/pages/core/api/end_ponits.dart';

// import 'package:ui_screens/pages/core/models/sign_in_model.dart';
// import 'package:ui_screens/pages/core/models/sign_up_model.dart';
// import 'package:ui_screens/pages/core/models/user_model.dart';

// class UserRepository {
//   final ApiConsumer api;

//   UserRepository({required this.api});
//   Future<Either<String, SignInModel>> signIn({
//     required String email,
//     required String password,
//   }) async {
//     try {
//       final response = await api.post(
//         EndPoint.signIn,
//         data: {
//           ApiKey.email: email,
//           ApiKey.password: password,
//         },
//       );
//       final user = SignInModel.fromJson(response);
//       final decodedToken = JwtDecoder.decode(user.token);
//       CacheHelper().saveData(key: ApiKey.token, value: user.token);
//       CacheHelper().saveData(key: ApiKey.id, value: decodedToken[ApiKey.id]);
//       return Right(user);
//     } catch (e) {
//       print(e.toString());
//       return const Left("Error");
//     }
//   }

//   Future<Either<String, SignUpModel>> signUp({
//     required String name,
//     // required String phone,
//     required String email,
//     required String password,
//     required String confirmPassword,
//     // required XFile profilePic,
//   }) async {
//     try {
//       final response = await api.post(
//         EndPoint.signUp,
//         isFromData: false,
//         data: {
//           ApiKey.name: name,
//           // ApiKey.phone: phone,
//           ApiKey.email: email,
//           ApiKey.password: password,
//           ApiKey.confirmPassword: confirmPassword,
//           // ApiKey.location:
//           //     '{"name":"methalfa","address":"meet halfa","coordinates":[30.1572709,31.224779]}',
//           // ApiKey.profilePic: await uploadImageToAPI(profilePic)
//         },
//       );
//       final signUPModel = SignUpModel.fromJson(response);
//       return Right(signUPModel);
//     } catch (e) {
//       return Left('Error');
//     }
//   }

//   Future<Either<String, UserModel>> getUserProfile() async {
//     try {
//       final response = await api.get(
//         EndPoint.getUserDataEndPoint(
//           CacheHelper().getData(key: ApiKey.id),
//         ),
//       );
//       return Right(UserModel.fromJson(response));
//     } catch (e) {
//       return Left('Error');
//     }
//   }
// }
