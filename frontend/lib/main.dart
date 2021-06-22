import 'package:flutter/material.dart';
import 'package:frontend/pages/login_page.dart';
import 'package:frontend/utils/consts.dart';

//-----------------------------------------------------------------
//>> Ponto central da aplicacao , metodo main
//-----------------------------------------------------------------
main() {
  runApp(PortInvestApp());
}


//-----------------------------------------------------------------
//>> Classe/widget central da aplicacao
//-----------------------------------------------------------------
class PortInvestApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Portinvest',
      theme: ThemeData(
        fontFamily: 'Montserrat',
        scaffoldBackgroundColor: Colors.white,
        primarySwatch: white,
        hintColor: Colors.transparent,
        focusColor: Colors.transparent,
        hoverColor: Colors.transparent,
        indicatorColor: Colors.transparent,
        splashColor: Colors.transparent,
        highlightColor: Colors.transparent,
      ),
      home: LoginPage(),
    );
  }
}