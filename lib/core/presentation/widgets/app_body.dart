import 'package:flutter/material.dart';
import 'package:portfolio/core/presentation/widgets/app_copyright.dart';

class AppBody extends StatelessWidget {
  final Widget child;
  const AppBody({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomRight,
      children: [
        Center(
          child: SizedBox(
            width: MediaQuery.sizeOf(context).width * 0.80,
            child: child,
          ),
        ),
        const AppCopyright(),
      ],
    );
  }
}
