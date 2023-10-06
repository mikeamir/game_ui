import 'package:flutter/material.dart';
import 'package:game_ui/core/constants/game_colors.dart';

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
    progressColor: GameColors.yellowAccent,
    backgroundColor: Color(0xff4E19A5),
    shadowColor: Color(0xff000000),
    borderColor: Color(0xffffffff),
  );

  static const GameProgressBarColorSet pink = GameProgressBarColorSet(
    progressColor: GameColors.pinkAccent,
    backgroundColor: Color(0xff4E19A5),
    shadowColor: Color(0xff000000),
    borderColor: Color(0xffffffff),
  );

  static const GameProgressBarColorSet green = GameProgressBarColorSet(
    progressColor: GameColors.greenAccent,
    backgroundColor: Color(0xff4E19A5),
    shadowColor: Color(0xff000000),
    borderColor: Color(0xffffffff),
  );

  static const GameProgressBarColorSet cyan = GameProgressBarColorSet(
    progressColor: GameColors.cyanAccent,
    backgroundColor: Color(0xff4E19A5),
    shadowColor: Color(0xff000000),
    borderColor: Color(0xffffffff),
  );

  static const GameProgressBarColorSet purple = GameProgressBarColorSet(
    progressColor: GameColors.purpleAccent,
    backgroundColor: Color(0xff4E19A5),
    shadowColor: Color(0xff000000),
    borderColor: Color(0xffffffff),
  );

  GameProgressBarColorSet copyWith({
    Color? backgroundColor,
    Color? progressColor,
    Color? shadowColor,
    Color? borderColor,
  }) {
    return GameProgressBarColorSet(
      backgroundColor: backgroundColor ?? this.backgroundColor,
      progressColor: progressColor ?? this.progressColor,
      shadowColor: shadowColor ?? this.shadowColor,
      borderColor: borderColor ?? this.borderColor,
    );
  }
}
