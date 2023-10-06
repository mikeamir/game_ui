import 'package:flutter/material.dart';
import '../core/enums/border_type.dart';
import '../core/models/game_button_color_set.dart';

class MiniGameButton extends StatelessWidget {
  final String text;
  final VoidCallback onTap;
  final double horizontalPadding;
  final double height;
  final GameButtonColorSet colorSet;
  final BorderType borderType;

  const MiniGameButton({
    required this.text,
    required this.onTap,
    this.colorSet = GameButtonColorSet.green,
    this.horizontalPadding = 18,
    this.height = 32,
    this.borderType = BorderType.circular,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final bool isRoundedBorder = borderType == BorderType.rounded;
    final double shadowBorderRadius = isRoundedBorder ? 7 : 33;
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: height,
        decoration: BoxDecoration(
          color: colorSet.shadow,
          borderRadius: BorderRadius.circular(isRoundedBorder ? 7 : 22),
          border: Border.all(color: Colors.white, width: 3),
        ),
        child: Column(
          children: [
            Expanded(
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Positioned.fill(
                    child: Row(
                      children: [
                        Expanded(
                          child: Container(
                            decoration: BoxDecoration(
                              color: colorSet.primary,
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(shadowBorderRadius),
                                bottomLeft: Radius.circular(shadowBorderRadius),
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          child: Container(
                            decoration: BoxDecoration(
                              color: colorSet.secondary,
                              borderRadius: BorderRadius.only(
                                topRight: Radius.circular(shadowBorderRadius),
                                bottomRight: Radius.circular(shadowBorderRadius),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: horizontalPadding),
                    child: Text(
                      text.toUpperCase(),
                      maxLines: 1,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontFamily: 'Digitalt',
                        letterSpacing: 1.5,
                        fontSize: 18,
                        color: Colors.white,
                        shadows: [
                          Shadow(
                            color: Colors.black.withOpacity(0.15),
                            offset: const Offset(0.0, 3.0),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 5),
          ],
        ),
      ),
    );
  }
}
