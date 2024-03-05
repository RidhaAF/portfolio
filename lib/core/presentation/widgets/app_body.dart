import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:portfolio/core/presentation/widgets/app_copyright.dart';
import 'package:portfolio/core/presentation/widgets/dark_mode_button.dart';
import 'package:portfolio/core/utils/constants/app_constants.dart';

class AppBody extends StatelessWidget {
  final Widget child;
  const AppBody({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Center(
          child: SizedBox(
            width: MediaQuery.sizeOf(context).width * 0.80,
            child: child,
          ),
        ),
        ModalRoute.of(context)?.settings.name == 'home'
            ? const Align(
                alignment: Alignment.topRight,
                child: Padding(
                  padding: EdgeInsets.symmetric(
                    vertical: AppConstants.defaultMargin / 4,
                  ),
                  child: DarkModeButton(),
                ),
              )
            : const SizedBox.shrink(),
        const Align(
          alignment: Alignment.bottomCenter,
          child: AppCopyright(),
        ),
      ],
    );
  }
}
