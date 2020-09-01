import 'package:cursoverao/components/default_button.dart';
import 'package:cursoverao/screens/login/login.dart';
import 'package:cursoverao/screens/splash/splash_content.dart';
import 'package:cursoverao/tamanhos.dart';
import 'package:cursoverao/uteis.dart';
import 'package:flutter/material.dart';

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  int pag = 0;
  List<Map<String, String>> splashData = [
    {
      "text": "Bem vindo ao HealthCare! Vamos começar.",
      "image": "assets/images/002-medicine.png"
    },
    {
      "text":
          "Utilizamos sensores de alta tecnologia \npara melhores resultados.",
      "image": "assets/images/019-heartrate.png"
    },
    {
      "text": "Dados personalizados de acordo com sua necessidade.",
      "image": "assets/images/043-medicalreport.png"
    }
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      // Inserir proporcionalmente na tela
      child: SizedBox(
        width: double.infinity,
        child: Column(
          children: <Widget>[
            Expanded(
                flex: 3,
                child: PageView.builder(
                  onPageChanged: (value) {
                    setState(() {
                      pag = value;
                    });
                  },
                  itemCount: splashData.length,
                  itemBuilder: (context, index) => SplashContent(
                    image: splashData[index]["image"],
                    text: splashData[index]["text"],
                  ),
                )),
            Expanded(
              flex: 2,
              child: Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: getProportionateScreenWidth(20)),
                child: Column(
                  children: <Widget>[
                    Spacer(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: List.generate(
                        splashData.length,
                        (index) => buildDot(index: index),
                      ),
                    ),
                    Spacer(
                      flex: 3,
                    ),
                    DefaultButton(
                      text: "Continue",
                      press: null,
                    ),
                    Spacer(),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  AnimatedContainer buildDot({int index}) {
    return AnimatedContainer(
      duration: kAnimationDuration,
      margin: EdgeInsets.only(right: 5),
      height: 6,
      width: pag == index ? 20 : 6,
      decoration: BoxDecoration(
        color: pag == index ? kPrimaryColor : Color(0xFFD8D8D8),
        borderRadius: BorderRadius.circular(3),
      ),
    );
  }
}
