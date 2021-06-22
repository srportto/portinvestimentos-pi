import 'package:flutter/material.dart';
import 'package:frontend/utils/consts.dart';

Color getCorParaEstadoWidget(Set<MaterialState> states) {
  const Set<MaterialState> interactiveStates = <MaterialState>{
    MaterialState.pressed,
    MaterialState.hovered,
    MaterialState.focused,
  };
  if (states.any(interactiveStates.contains)) {
    return Colors.blue;
  }
  return portInvestColor_write;
}
