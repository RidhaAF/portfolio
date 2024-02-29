import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ridhaaf_flutter/core/presentation/routes/app_routes.dart';
import 'package:ridhaaf_flutter/core/presentation/widgets/app_body.dart';
import 'package:ridhaaf_flutter/core/presentation/widgets/app_link_text.dart';
import 'package:ridhaaf_flutter/core/presentation/widgets/default_spacer.dart';
import 'package:ridhaaf_flutter/core/utils/constants/app_constants.dart';
import 'package:url_launcher/url_launcher.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AppBody(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(AppConstants.defaultMargin),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _imageSection(),
              const DefaultSpacer(),
              _introductionSection(),
              const DefaultSpacer(),
              _worksSection(context),
              const DefaultSpacer(),
              _focusSection(),
              const DefaultSpacer(),
              _contactSection('ridhaaf@gmail.com', 'contact'),
              const DefaultSpacer(size: 4),
              _linkSection('www.linkedin.com/in/ridhaaf', 'linkedin'),
              const DefaultSpacer(size: 4),
              _linkSection('github.com/ridhaaf', 'github'),
              const DefaultSpacer(size: 4),
              _linkSection(
                  'www.instagram.com/portfolionya.ridhaaf', 'instagram'),
              const DefaultSpacer(size: 4),
              _linkSection('x.com/ridhaaf_', 'x'),
            ],
          ),
        ),
      ),
    );
  }

  Widget _imageSection() {
    return Image.asset(
      'assets/images/ridhaaf.png',
      width: 120,
      height: 120,
    );
  }

  Widget _introductionSection() {
    return RichText(
      text: TextSpan(
        style: GoogleFonts.fragmentMono(),
        children: [
          _textSpan('ridha', bold: true),
          _textSpan(
              ' is a software engineer/mobile developer (android & flutter developer) known for crafting sleek and user-friendly mobile applications. Holding a Bachelor\'s degree in '),
          _linkSpan('https://if.unpas.ac.id', 'Informatics Engineering'),
          _textSpan(' from '),
          _linkSpan('https://www.unpas.ac.id', 'Universitas Pasundan'),
          _textSpan(
              ' and have approximately 2 years of experience in the field.'),
        ],
      ),
    );
  }

  Widget _worksSection(BuildContext context) {
    return RichText(
      text: TextSpan(
        style: GoogleFonts.fragmentMono(),
        children: [
          _textSpan('You can check out some of '),
          _textSpan('ridha', bold: true),
          _textSpan('\'s work on the '),
          _linkSpan(
            '#',
            'projects',
            bold: false,
            onTap: () => context.push(AppRoutes.projects),
          ),
          _textSpan(' page.'),
        ],
      ),
    );
  }

  Widget _focusSection() {
    return RichText(
      text: TextSpan(
        style: GoogleFonts.jetBrainsMono(),
        children: [
          _textSpan('ridha', bold: true),
          _textSpan(
              ' is currently focusing on mobile development, especially in the field of android and flutter.'),
        ],
      ),
    );
  }

  Widget _contactSection(String email, String text) {
    return AppLinkText(
      onTap: () => launchUrl(Uri(scheme: 'mailto', path: email)),
      text: text,
    );
  }

  Widget _linkSection(String path, String text) {
    return AppLinkText(
      onTap: () => launchUrl(Uri(scheme: 'https', path: path)),
      text: text,
    );
  }

  TextSpan _textSpan(String text, {bool bold = false}) {
    return TextSpan(
      text: text,
      style: TextStyle(
        fontWeight: bold ? AppConstants.bold : AppConstants.regular,
      ),
    );
  }

  TextSpan _linkSpan(
    String url,
    String text, {
    bool bold = false,
    Function()? onTap,
  }) {
    return TextSpan(
      text: text,
      style: TextStyle(
        fontWeight: bold ? AppConstants.bold : AppConstants.regular,
        decoration: TextDecoration.underline,
      ),
      recognizer: TapGestureRecognizer()
        ..onTap = onTap ?? () => launchUrl(Uri.parse(url)),
    );
  }
}
