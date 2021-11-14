import 'package:closet/ui/auth/signup/signup_screen.dart';
import 'package:flutter/material.dart';
import 'ui/splash/splash_screen.dart';
import 'ui/auth/login/login_screen.dart';
import 'ui/auth/signup/signup_screen.dart';
import 'ui/home/home_screen.dart';
import 'ui/auth/signup/otp_verification_screen.dart';
import 'ui/auth/signup/add_new_password_screen.dart';
import 'ui/auth/forget_password/forget_password_screen.dart';
import 'ui/home/tab_closet/outfit_collection/outfit_collection_vu.dart';

Map<String, WidgetBuilder> appRoutes = {

  '/': (context) => const SplashScreen(),
  '/login_screen' : (context) => const LoginScreen(),
  '/sign_up' : (context) => const SignUpScreen(),
  '/home' : (context) => const HomeScreen(),
  '/otp_verification' : (context) => const OtpVerificationScreen(),
  '/add_new_password' : (context) => const AddNewPasswordScreen(),
  '/forget_password' : (context) => const ForgetPasswordScreen(),
  '/outfit_collection' : (context) => const OutfitCollectionScreen(),

};