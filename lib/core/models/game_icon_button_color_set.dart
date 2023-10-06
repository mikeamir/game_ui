import 'package:flutter/material.dart';

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
    background: Color(0xff92F200),
    shadow: Color(0xff3ABD01),
    border: Colors.white,
  );

  static const GameIconButtonColorSet red = GameIconButtonColorSet(
    background: Color(0xffFF4672),
    shadow: Color(0xffFF265A),
    border: Colors.white,
  );

  static const GameIconButtonColorSet purple = GameIconButtonColorSet(
    background: Color(0xffB169FA),
    shadow: Color(0xff782EFB),
    border: Colors.white,
  );

  static const GameIconButtonColorSet pink = GameIconButtonColorSet(
    background: Color(0xffFF60D2),
    shadow: Color(0xffFF29C3),
    border: Colors.white,
  );

  static const GameIconButtonColorSet yellow = GameIconButtonColorSet(
    background: Color(0xffFFF635),
    shadow: Color(0xffFFCC18),
    border: Colors.white,
  );

  static const GameIconButtonColorSet cyan = GameIconButtonColorSet(
    background: Color(0xff4CDAFE),
    shadow: Color(0xff01B4ED),
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
