import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:frontend/ controllers/home_controller.dart';
import 'package:frontend/utils/consts.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final HomeController controller = HomeController();

  @override
  void initState() {
    super.initState();
    print("etapa de criacao do widget");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber,
      appBar: AppBar(
        title: Text("b&h"),
        centerTitle: true,
      ),
      body: SafeArea(
          child: Container(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //_buildHeader(),
            const SizedBox(height: 20.0),
            //_buildBody(context),
            const SizedBox(height: 15.0),
            // _buildBottomCardList(),
          ],
        ),
      )),
    );
  }

  Row _buildHeader() {
    return Row(
      children: [
        Text(
          'Olá, Bruno',
          style: TextStyle(
            color: Colors.white,
            fontSize: 28.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        Expanded(
          child: const SizedBox.shrink(),
        ),
      ],
    );
  }

  Expanded _buildBody(BuildContext context) {
    return Expanded(
      child: Container(
        color: Colors.deepPurple,
        child: Column(
          mainAxisSize: MainAxisSize.max,
          // indica o tamanho do "container" da coluna, se preencher o minimo (até aonde tem conteudo) ou o maximo da tela
          mainAxisAlignment: MainAxisAlignment.center,
          //Para eixo: y
          crossAxisAlignment: CrossAxisAlignment.center,
        ),
      ),
    );
  }
}
