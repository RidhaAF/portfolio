import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:portfolio/core/presentation/themes/app_themes.dart';
import 'package:portfolio/core/utils/helpers/experience_helper.dart';
import 'package:portfolio/feature/presentation/pages/home/home_page.dart';

void main() {
  testWidgets('HomePage renders dynamic YOE', (WidgetTester tester) async {
    await tester.pumpWidget(
      AdaptiveTheme(
        light: AppTheme.light,
        dark: AppTheme.dark,
        initial: AdaptiveThemeMode.light,
        builder: (theme, darkTheme) => MaterialApp(
          theme: theme,
          darkTheme: darkTheme,
          home: const HomePage(),
        ),
      ),
    );

    final int yoe = calculateYoe();
    expect(
      find.byWidgetPredicate(
        (widget) =>
            widget is SelectableText &&
            widget.textSpan?.toPlainText().contains(
                    'approximately $yoe years of experience') ==
                true,
      ),
      findsOneWidget,
    );
  });
}


