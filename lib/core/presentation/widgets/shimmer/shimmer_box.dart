import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class ShimmerBox extends StatelessWidget {
  final double width;
  final double height;
  final BorderRadiusGeometry? borderRadius;
  const ShimmerBox({
    super.key,
    required this.width,
    required this.height,
    this.borderRadius,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: borderRadius == null
          ? _shimmer(context)
          : ClipRRect(
              borderRadius: borderRadius ?? BorderRadius.zero,
              child: _shimmer(context),
            ),
    );
  }

  Widget _shimmer(BuildContext context) {
    final bool isDark = AdaptiveTheme.of(context).mode.isDark;
    Color baseColor = isDark ? Colors.grey.shade700 : Colors.grey.shade300;
    Color highlightColor = isDark ? Colors.grey.shade800 : Colors.grey.shade400;

    return Shimmer.fromColors(
      baseColor: baseColor,
      highlightColor: highlightColor,
      child: Container(
        color: Colors.white,
      ),
    );
  }
}
