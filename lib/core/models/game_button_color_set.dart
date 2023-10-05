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

  static const GameButtonColorSet yellow = GameButtonColorSet(
    primary: Color(0x80FFEE88),
    secondary: Color(0xffFFDB0A),
    shadow: Color(0xffFFB213),
    border: Colors.white,
  );

  static const GameButtonColorSet pink = GameButtonColorSet(
    primary: Color(0x80FDC0FF),
    secondary: Color(0xffFC8AFF),
    shadow: Color(0xffDA57F0),
    border: Colors.white,
  );

  static const GameButtonColorSet cyan = GameButtonColorSet(
    primary: Color(0x8094E7FC),
    secondary: Color(0xff4CDAFE),
    shadow: Color(0xff08B9FF),
    border: Colors.white,
  );

  static const GameButtonColorSet purple = GameButtonColorSet(
    primary: Color(0x80D6AFFE),
    secondary: Color(0xffC286FF),
    shadow: Color(0xffA75CF4),
    border: Colors.white,
  );
}
