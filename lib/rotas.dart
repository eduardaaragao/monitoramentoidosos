import 'dart:js';

import 'package:cursoverao/screens/login/login.dart';
import 'package:cursoverao/screens/splash/splash_screen.dart';
import 'package:flutter/material.dart';

//Todas as rotas estarão disponíveis nesse arquivo
final Map<String, WidgetBuilder> routes = {
  SplashScreen.routeName: (context) => SplashScreen(),
  SignIn.routeName: (context) => SignIn(),
};
