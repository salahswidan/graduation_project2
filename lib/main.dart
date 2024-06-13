import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ui_screens/onBoardingScreens/Splash.dart';
import 'package:ui_screens/pages/cache/Forget_password.dart';
import 'package:ui_screens/pages/cache/cache_helper.dart';
import 'package:ui_screens/pages/core/api/api_consumer.dart';
import 'package:ui_screens/pages/core/api/dio_consumer.dart';

import 'package:ui_screens/pages/cubit/user_cubit.dart';
import 'package:ui_screens/pages/core/verification.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  CacheHelper().init();
  runApp(BlocProvider(
    create: (context) => UserCubit(DioConsumer(dio: Dio())),
    child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Splash(),
    );
  }
}
