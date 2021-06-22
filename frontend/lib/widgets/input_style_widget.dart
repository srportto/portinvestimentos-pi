import 'package:flutter/material.dart';

InputDecoration getWidgetInput({required String nomeExibicaoUser}){
  return InputDecoration(
    labelText: nomeExibicaoUser,
    labelStyle: TextStyle(
      color: Colors.white,
    ),
    prefixIcon: Icon(
      Icons.person,
      color: Colors.white,
    ),
    focusedBorder: UnderlineInputBorder(
      borderSide: BorderSide(
        color: Colors.white,
      ),
    ),
    enabledBorder: UnderlineInputBorder(
      borderSide: BorderSide(
        color: Colors.white,
      ),
    ),
  );
}


