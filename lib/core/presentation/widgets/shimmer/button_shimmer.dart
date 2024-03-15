import 'package:flutter/material.dart';
import 'package:portfolio/core/presentation/widgets/shimmer/shimmer_box.dart';
import 'package:portfolio/core/utils/constants/app_constants.dart';

class ButtonShimmer extends StatelessWidget {
  const ButtonShimmer({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      child: const ShimmerBox(
        width: 64,
        height: 8,
        borderRadius: BorderRadius.all(
          Radius.circular(AppConstants.defaultRadius),
        ),
      ),
    );
  }
}
