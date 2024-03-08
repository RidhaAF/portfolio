import 'package:flutter/material.dart';
import 'package:portfolio/core/presentation/widgets/dark_mode_button.dart';

class DefaultAppBar extends StatelessWidget implements PreferredSizeWidget {
  final Widget title;
  const DefaultAppBar({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: title,
      actions: const [
        DarkModeButton(),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
