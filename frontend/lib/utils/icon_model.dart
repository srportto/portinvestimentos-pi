import 'dart:convert';

import 'package:flutter/widgets.dart';

class IconModel {
  final IconData iconData;
  final String description;

  IconModel({required this.iconData, required this.description});

  Map<String, dynamic> toMap() {
    return {
      'iconData': iconData.codePoint,
      'description': description,
    };
  }

  factory IconModel.fromMap(Map<String, dynamic> map) {
    if (map == null) return IconModel.fromJson("");

    return IconModel(
      iconData: map['iconData'],
      description: map['description'],
    );
  }

  String toJson() => json.encode(toMap());

  factory IconModel.fromJson(String source) =>
      IconModel.fromMap(json.decode(source));
}
