import 'package:cursoverao/screens/login/login.dart';
import 'package:flutter/material.dart';

class Authenticate extends StatefulWidget {
  @override
  _AuthenticateState createState() => _AuthenticateState();
}

class _AuthenticateState extends State<Authenticate> {
  @override
  Widget build(BuildContext context) {
    return Container(
      // Criar classe de login para autenticar o usuário
      child: SignIn(),
    );
  }
}
