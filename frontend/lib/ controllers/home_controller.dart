import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:frontend/utils/enums/home_states_enum.dart';

import 'package:frontend/repositories/home_repository.dart';
//import 'package:devquiz/shared/models/quiz_model.dart';
//import 'package:devquiz/shared/models/usuario_model.dart';

class HomeController {
  ValueNotifier<HomeStateEnums> stateNotifier =
      ValueNotifier<HomeStateEnums>(HomeStateEnums.empty);

  final List<Map<String, dynamic>> _allIcons = [
    {
      "iconData": Icons.monetization_on_outlined,
      "description": "Pix",
    },
    {
      "iconData": Icons.monetization_on_outlined,
      "description": "Pagar",
    },
    {
      "iconData": Icons.monetization_on_outlined,
      "description": "Indicar amigos",
    },
    {
      "iconData": Icons.monetization_on_outlined,
      "description": "Transferir",
    },
    {
      "iconData": Icons.monetization_on_outlined,
      "description": "Depositar",
    },
    {
      "iconData": Icons.monetization_on_outlined,
      "description": "Empréstimos",
    },
    {
      "iconData": Icons.monetization_on_outlined,
      "description": "Cartão virtual",
    },
    {
      "iconData": Icons.monetization_on_outlined,
      "description": "Recarga de celular",
    },
    {
      "iconData": Icons.monetization_on_outlined,
      "description": "Ajustar limite",
    },
    {
      "iconData": Icons.monetization_on_outlined,
      "description": "Bloquear cartão",
    },
    {
      "iconData": Icons.monetization_on_outlined,
      "description": "Cobrar",
    },
    {
      "iconData": Icons.monetization_on_outlined,
      "description": "Doação",
    },
    {
      "iconData": Icons.monetization_on_outlined,
      "description": "Me ajuda",
    },
  ];

  List<Map<String, dynamic>> get allIcons => _allIcons;

  final ValueNotifier<bool> showContentNotifier = ValueNotifier<bool>(true);

  set state(HomeStateEnums state) => stateNotifier.value = state;
  HomeStateEnums get state => stateNotifier.value;

  // UserModel? user;
  //List<QuizModel>? quizzes;

  final repository = HomeRepository();

  void getUser() async {
    state = HomeStateEnums.loading;
    await Future.delayed(Duration(seconds: 2));
    //  user = await repository.getUser();
    state = HomeStateEnums.success;
  }

  void getQuizzes() async {
    state = HomeStateEnums.loading;
    await Future.delayed(Duration(seconds: 2));
    // quizzes = await repository.getQuizzes();
    state = HomeStateEnums.success;
  }

  bool get showContent => showContentNotifier.value;

  void showHideContent() {
    showContentNotifier.value = !showContent;
  }
}
