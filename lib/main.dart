import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:ui_screens/BMI/bmi_screen.dart';
import 'package:ui_screens/exercise_beginner_increaseWight_back/Day3_Cardio.dart';
import 'package:ui_screens/exercise_beginner_increaseWight_back/Day4_Shoulders.dart';
import 'package:ui_screens/exercise_beginner_push_pull_leg/pull2.dart';
import 'package:ui_screens/exercises/beginner/increase_weight/Day2_Back&Trapees.dart';
import 'package:ui_screens/exercises/beginner/increase_weight/Day3_Shoulders.dart';
import 'package:ui_screens/exercises/beginner/increase_weight/Day4_Biceps&Triceps.dart';
import 'package:ui_screens/exercises/beginner/increase_weight/Day5_Legs.dart';
import 'package:ui_screens/pages/Forget_password.dart';
import 'package:ui_screens/pages/age.dart';
import 'package:ui_screens/pages/gender.dart';
import 'package:ui_screens/pages/goal.dart';
import 'package:ui_screens/pages/in_body.dart';
import 'package:ui_screens/pages/login.dart';
import 'package:ui_screens/onBoardingScreens/On_Boarding_Screen2.dart';
import 'package:ui_screens/onBoardingScreens/On_Boarding_Screen3.dart';
import 'package:ui_screens/onBoardingScreens/On_Boarding_Screen1.dart';
import 'package:ui_screens/pages/signUp.dart';
import 'package:ui_screens/pages/height.dart';
import 'package:ui_screens/pages/verification.dart';
import 'package:ui_screens/pages/weight.dart';
import 'package:ui_screens/onBoardingScreens/Splash.dart';
import 'package:ui_screens/private/food_bulking/bulking_and_drying_level_2.dart';
import 'Drying/drying_levels.dart';
import 'TargetPage/custom_target_page.dart';
import 'Top_sources/Top_Sources.dart';
import 'core/Nutrition_Program_see_all.dart';
import 'core/home.dart';
import 'core/nutrition_guide_see_all.dart';
import 'core/training_programs_see_all.dart';
import 'core/workout_category.dart';
import 'exercise_beginner_increaseWight_back/Day1_Chest&triceps.dart';
import 'exercise_beginner_increaseWight_back/Day2_Back&Trapees.dart';
import 'exercise_beginner_increaseWight_back/Day5_Legs.dart';
import 'exercise_beginner_push_pull_leg/legs.dart';
import 'exercise_beginner_push_pull_leg/pull_1.dart';
import 'exercise_beginner_push_pull_leg/push2.dart';
import 'exercise_beginner_push_pull_leg/push_1.dart';
import 'exercises/beginner/increase_weight/Day1_Chest.dart';
import 'guide/armor_guide.dart';
import 'guide/back_guide.dart';
import 'guide/cardio_guide.dart';
import 'guide/chest_guide.dart';
import 'guide/legs_guide.dart';
import 'guide/shoulders_guide.dart';
import 'healthy_recipes/bulking_levels.dart';
import 'levels/Beginner/beginner_screen.dart';
import 'loss_weight/loss_wight_level_one.dart';
import 'payment/payment_card.dart';
import 'payment/payment_resend_code.dart';
import 'private/food_bulking/bulking_and_drying_level_1.dart';
import 'profile/profile_page.dart';
import 'profile/setting_screen.dart';
import 'supplement/supplement_screen.dart';
import 'woman/woman_levels.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LossWightUp1(),
    );
  }
}
