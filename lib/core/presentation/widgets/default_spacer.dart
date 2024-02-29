import 'package:flutter/material.dart';
import 'package:ridhaaf_flutter/core/utils/constants/app_constants.dart';

class DefaultSpacer extends StatelessWidget {
  final bool isVertical;
  final double? size;
  const DefaultSpacer({
    super.key,
    this.isVertical = true,
    this.size,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: isVertical ? size ?? AppConstants.defaultMargin : 0,
      width: isVertical ? 0 : size ?? AppConstants.defaultMargin,
    );
  }
}
