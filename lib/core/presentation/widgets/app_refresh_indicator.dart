import 'package:flutter/material.dart';

class AppRefreshIndicator extends StatelessWidget {
  final void Function() refresh;
  final Widget child;
  const AppRefreshIndicator({
    super.key,
    required this.refresh,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return RefreshIndicator(
      onRefresh: () async {
        await Future.delayed(const Duration(seconds: 1));
        refresh();
      },
      child: child,
    );
  }
}
