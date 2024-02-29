import 'package:flutter/material.dart';

class AppBody extends StatelessWidget {
  final Widget child;
  const AppBody({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        width: MediaQuery.sizeOf(context).width * 0.80,
        child: child,
      ),
    );
  }
}
