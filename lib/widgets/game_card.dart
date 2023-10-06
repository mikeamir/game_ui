import 'package:flutter/material.dart';

class GameCard extends StatelessWidget {
  final double width;
  final double height;
  final Color color;
  final Color borderColor;
  final double borderThickness;
  final VoidCallback? onTap;
  final Alignment alignment;
  final double borderRadius;
  final List<BoxShadow> shadows;
  final Widget child;

  const GameCard({
    required this.width,
    required this.height,
    required this.child,
    this.onTap,
    this.borderColor = const Color(0xffB57BFE),
    this.color = Colors.white,
    this.alignment = Alignment.center,
    this.borderRadius = 16,
    this.borderThickness = 3,
    this.shadows = const [
      BoxShadow(
        color: Color(0x26000000),
        offset: Offset(0, 6),
      ),
      BoxShadow(
        color: Color.fromARGB(255, 89, 24, 240),
        offset: Offset(0, 3),
      ),
    ],
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: height,
        width: width,
        alignment: alignment,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(borderRadius),
          border: Border.all(color: borderColor, width: borderThickness),
          boxShadow: shadows,
        ),
        child: child,
      ),
    );
  }
}
