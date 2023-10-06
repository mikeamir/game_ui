import 'package:flutter/material.dart';
import 'package:game_ui/core/constants/game_colors.dart';

class GameButtonColorSet {
  final Color primary;
  final Color secondary;
  final Color shadow;
  final Color border;

  const GameButtonColorSet({
    required this.primary,
    required this.secondary,
    required this.shadow,
    required this.border,
  });

  static const GameButtonColorSet green = GameButtonColorSet(
    primary: GameColors.green,
    secondary: GameColors.greenAccent,
    shadow: GameColors.greenShadow,
    border: Colors.white,
  );

  static const GameButtonColorSet yellow = GameButtonColorSet(
    primary: GameColors.yellow,
    secondary: GameColors.yellowAccent,
    shadow: GameColors.yellowShadow,
    border: Colors.white,
  );

  static const GameButtonColorSet pink = GameButtonColorSet(
    primary: GameColors.pink,
    secondary: GameColors.pinkAccent,
    shadow: GameColors.pinkShadow,
    border: Colors.white,
  );

  static const GameButtonColorSet cyan = GameButtonColorSet(
    primary: GameColors.cyan,
    secondary: GameColors.cyanAccent,
    shadow: GameColors.cyanShadow,
    border: Colors.white,
  );

  static const GameButtonColorSet purple = GameButtonColorSet(
    primary: GameColors.purple,
    secondary: GameColors.purpleAccent,
    shadow: GameColors.purpleShadow,
    border: Colors.white,
  );

  GameButtonColorSet copyWith({
    Color? primary,
    Color? secondary,
    Color? shadow,
    Color? border,
  }) {
    return GameButtonColorSet(
      primary: primary ?? this.primary,
      secondary: secondary ?? this.secondary,
      shadow: shadow ?? this.shadow,
      border: border ?? this.border,
    );
  }
}
