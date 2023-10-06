import 'package:flutter/material.dart';

class ColorButton extends StatelessWidget {
  final Color color;
  final Color shadowColor;
  final Color borderColor;
  final double borderThickness;
  final double shadowSize;
  final double height;
  final double width;
  final double borderRadius;
  final VoidCallback? onTap;

  const ColorButton({
    this.height = 48,
    this.width = 48,
    this.shadowSize = 3,
    this.borderRadius = 8,
    required this.color,
    required this.shadowColor,
    required this.borderColor,
    required this.borderThickness,
    this.onTap,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final double topBorderRadius = borderRadius * (((width - shadowSize) / width) * 0.9);
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: height,
        width: width,
        decoration: BoxDecoration(
          color: shadowColor,
          borderRadius: BorderRadius.circular(borderRadius),
          border: borderThickness > 0 ? Border.all(width: borderThickness, color: borderColor) : null,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Expanded(
              child: Container(
                width: double.maxFinite,
                height: double.maxFinite,
                decoration: BoxDecoration(
                  color: color,
                  borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(borderRadius),
                    bottomLeft: Radius.circular(borderRadius),
                    topLeft: Radius.circular(topBorderRadius),
                    topRight: Radius.circular(topBorderRadius),
                  ),
                ),
              ),
            ),
            SizedBox(height: shadowSize),
          ],
        ),
      ),
    );
  }
}
