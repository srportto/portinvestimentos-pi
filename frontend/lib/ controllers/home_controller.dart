import 'package:flutter/foundation.dart';
import 'package:frontend/utils/enums/home_states_enum.dart';

import 'package:frontend/repositories/home_repository.dart';
//import 'package:devquiz/shared/models/quiz_model.dart';
//import 'package:devquiz/shared/models/usuario_model.dart';

class HomeController {
  ValueNotifier<HomeStateEnums> stateNotifier =
      ValueNotifier<HomeStateEnums>(HomeStateEnums.empty);
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
}
