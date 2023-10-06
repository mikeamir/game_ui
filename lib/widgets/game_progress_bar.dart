import 'package:flutter/material.dart';
import '../core/models/game_progress_bar_color_set.dart';

class GameProgressBar extends StatelessWidget {
  /// Double from 0 to 1 that represents the progress
  final double progress;
  final double width;
  final double height;
  final double borderRadius;
  final double borderThickness;
  final GameProgressBarColorSet colorSet;

  const GameProgressBar({
    required this.progress,
    this.width = 120,
    this.height = 20,
    this.borderRadius = 27,
    this.borderThickness = 3,
    this.colorSet = GameProgressBarColorSet.green,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
        color: colorSet.backgroundColor,
        borderRadius: BorderRadius.circular(borderRadius),
        border: Border.all(color: colorSet.borderColor, width: borderThickness),
        boxShadow: [
          BoxShadow(
            color: colorSet.shadowColor.withOpacity(0.15),
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: Row(
        children: [
          Expanded(
            child: Container(
              height: double.maxFinite,
              decoration: BoxDecoration(
                color: colorSet.progressColor,
                borderRadius: BorderRadius.circular(borderRadius),
              ),
            ),
          ),
          SizedBox(width: width - (width * progress.clamp(0, 1)))
        ],
      ),
    );
  }
}
