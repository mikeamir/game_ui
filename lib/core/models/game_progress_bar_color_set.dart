import 'package:flutter/material.dart';

class GameProgressBarColorSet {
  final Color backgroundColor;
  final Color progressColor;
  final Color shadowColor;
  final Color borderColor;

  const GameProgressBarColorSet({
    required this.backgroundColor,
    required this.progressColor,
    required this.shadowColor,
    required this.borderColor,
  });

  static const GameProgressBarColorSet yellow = GameProgressBarColorSet(
    progressColor: Color(0xffFFDB0A),
    backgroundColor: Color(0xff4E19A5),
    shadowColor: Color(0xff000000),
    borderColor: Color(0xffffffff),
  );

  static const GameProgressBarColorSet pink = GameProgressBarColorSet(
    progressColor: Color(0xffFC8AFF),
    backgroundColor: Color(0xff4E19A5),
    shadowColor: Color(0xff000000),
    borderColor: Color(0xffffffff),
  );

  static const GameProgressBarColorSet green = GameProgressBarColorSet(
    progressColor: Color(0xff67EB00),
    backgroundColor: Color(0xff4E19A5),
    shadowColor: Color(0xff000000),
    borderColor: Color(0xffffffff),
  );

  static const GameProgressBarColorSet cyan = GameProgressBarColorSet(
    progressColor: Color(0xff4CDAFE),
    backgroundColor: Color(0xff4E19A5),
    shadowColor: Color(0xff000000),
    borderColor: Color(0xffffffff),
  );

  static const GameProgressBarColorSet purple = GameProgressBarColorSet(
    progressColor: Color(0xffC286FF),
    backgroundColor: Color(0xff4E19A5),
    shadowColor: Color(0xff000000),
    borderColor: Color(0xffffffff),
  );
}
