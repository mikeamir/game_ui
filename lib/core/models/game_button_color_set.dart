import 'package:flutter/material.dart';

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
    primary: Color(0x8067EB00),
    secondary: Color(0xff43D309),
    shadow: Color(0xff4EC307),
    border: Colors.white,
  );
}
