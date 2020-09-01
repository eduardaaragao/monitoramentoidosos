import 'package:cursoverao/screens/splash/body.dart';
import 'package:cursoverao/tamanhos.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  static String routeName = "/splash";
  @override
  Widget build(BuildContext context) {
    // Deve chamar na página inicial
    SizeConfig().init(context);
    return Scaffold(
      body: Body(),
    );
  }
}
