import 'package:flutter/material.dart';
import 'package:game_ui/core/constants/game_colors.dart';

class GameIconButtonColorSet {
  final Color background;
  final Color border;
  final Color shadow;

  const GameIconButtonColorSet({
    required this.background,
    required this.border,
    required this.shadow,
  });

  static const GameIconButtonColorSet green = GameIconButtonColorSet(
    background: GameColors.greenAccent,
    shadow: GameColors.greenShadow,
    border: Colors.white,
  );

  static const GameIconButtonColorSet red = GameIconButtonColorSet(
    background: GameColors.red,
    shadow: GameColors.redShadow,
    border: Colors.white,
  );

  static const GameIconButtonColorSet purple = GameIconButtonColorSet(
    background: GameColors.purpleAccent,
    shadow: GameColors.purpleShadow,
    border: Colors.white,
  );

  static const GameIconButtonColorSet pink = GameIconButtonColorSet(
    background: GameColors.pinkAccent,
    shadow: GameColors.pinkShadow,
    border: Colors.white,
  );

  static const GameIconButtonColorSet yellow = GameIconButtonColorSet(
    background: GameColors.yellowAccent,
    shadow: GameColors.yellowShadow,
    border: Colors.white,
  );

  static const GameIconButtonColorSet cyan = GameIconButtonColorSet(
    background: GameColors.cyanAccent,
    shadow: GameColors.cyanShadow,
    border: Colors.white,
  );

  GameIconButtonColorSet copyWith({
    Color? background,
    Color? border,
    Color? shadow,
  }) {
    return GameIconButtonColorSet(
      background: background ?? this.background,
      border: border ?? this.border,
      shadow: shadow ?? this.shadow,
    );
  }
}
