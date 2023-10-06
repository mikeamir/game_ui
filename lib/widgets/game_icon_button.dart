import 'package:flutter/material.dart';
import '../core/models/game_icon_button_color_set.dart';

class GameIconButton extends StatelessWidget {
  final Widget icon;
  final VoidCallback onTap;
  final double size;
  final double padding;
  final GameIconButtonColorSet colorSet;
  final Offset shadowOffset;
  final double borderThickness;

  const GameIconButton({
    required this.icon,
    required this.onTap,
    this.size = 48,
    this.padding = 8,
    this.colorSet = GameIconButtonColorSet.green,
    this.shadowOffset = const Offset(0, 3),
    this.borderThickness = 3,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: size,
        width: size,
        alignment: Alignment.center,
        padding: EdgeInsets.all(padding),
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: colorSet.background,
          border: Border.all(color: colorSet.border, width: borderThickness),
          boxShadow: [BoxShadow(color: colorSet.shadow, offset: shadowOffset)],
        ),
        child: icon,
      ),
    );
  }
}
