import 'package:flutter/material.dart';
// import 'package:testes_flutter/floating_button/FloatingHomeButton.dart';
// import 'package:testes_flutter/weather_app_ui/HomeScreens.dart';
import 'package:testes_flutter/botton_nav_bar/componnets/NavBarBotton.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    // ! Lembrar sempre de criar uma pasta para a aplicação de teste
    // ! comentar na parte superior com * o que é a tela e logo abaixo deixar comentado com ? para saber qual deve ser executado
    // ! comentar sempre a importação do package com *
    // ! cuidar com o nome das paginas para importar no return!!!!

    // * NavBarBotton é um widget com telas na parte inferior (Home, Favoritos, Chat, Conta)
    return NavBarBotton();

    // * Weather App Ui
    // ?return WeatherHomePage();

    // * Floating Action Button
    // ?return FloatingHomeScreen();

    // *
    //return
  }
}
