import 'package:flutter/material.dart';
import 'package:portfolio/core/presentation/widgets/shimmer/shimmer_box.dart';
import 'package:portfolio/core/utils/constants/app_constants.dart';

class LineShimmer extends StatelessWidget {
  final double width;
  final double height;
  final int itemCount;
  const LineShimmer({
    super.key,
    this.width = 64,
    this.height = 16,
    this.itemCount = 5,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: itemCount,
      itemBuilder: (context, i) {
        double bottom = 0;
        if (itemCount > 1 && i < itemCount - 1) {
          bottom = AppConstants.defaultMargin / 4;
        }

        return Padding(
          padding: EdgeInsets.only(
            bottom: bottom,
          ),
          child: ShimmerBox(
            width: width,
            height: height,
            borderRadius: const BorderRadius.all(
              Radius.circular(AppConstants.defaultRadius),
            ),
          ),
        );
      },
    );
  }
}
