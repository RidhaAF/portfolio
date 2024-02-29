import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
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
          child: Container(
            margin: const EdgeInsets.all(AppConstants.defaultMargin),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _imageSection(),
                const DefaultSpacer(),
                _introductionSection(),
                const DefaultSpacer(),
                _worksSection(),
                const DefaultSpacer(),
                _focusSection(),
                const DefaultSpacer(),
                _contactSection(),
                const DefaultSpacer(size: 4),
                _linkedinSection(),
                const DefaultSpacer(size: 4),
                _githubSection(),
                const DefaultSpacer(size: 4),
                _instagramSection(),
                const DefaultSpacer(size: 4),
                _xSection(),
              ],
            ),
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
    String text1 = 'ridha';
    String text2 =
        ' is a software engineer/mobile developer (android & flutter developer) known for crafting sleek and user-friendly mobile applications. Holding a Bachelor\'s degree in ';
    String text3 = 'Informatics Engineering';
    String text4 = ' from ';
    String text5 = 'Universitas Pasundan';
    String text6 =
        ' and have approximately 2 years of experience in the field.';

    return RichText(
      text: TextSpan(
        style: GoogleFonts.fragmentMono(),
        children: [
          TextSpan(
            text: text1,
            style: const TextStyle(
              fontWeight: AppConstants.bold,
            ),
          ),
          TextSpan(
            text: text2,
          ),
          TextSpan(
            text: text3,
            style: const TextStyle(
              fontWeight: AppConstants.bold,
              decoration: TextDecoration.underline,
            ),
            recognizer: TapGestureRecognizer()
              ..onTap = () {
                final Uri informaticsLaunchUri = Uri(
                  scheme: 'https',
                  path: 'if.unpas.ac.id',
                );

                launchUrl(informaticsLaunchUri);
              },
          ),
          TextSpan(
            text: text4,
          ),
          TextSpan(
            text: text5,
            style: const TextStyle(
              fontWeight: AppConstants.bold,
              decoration: TextDecoration.underline,
            ),
            recognizer: TapGestureRecognizer()
              ..onTap = () {
                final Uri unpasLaunchUri = Uri(
                  scheme: 'https',
                  path: 'www.unpas.ac.id',
                );

                launchUrl(unpasLaunchUri);
              },
          ),
          TextSpan(
            text: text6,
          ),
        ],
      ),
    );
  }

  Widget _worksSection() {
    String text1 = 'You can check out some of ';
    String text2 = 'ridha';
    String text3 = '\'s work on the ';
    String text4 = 'projects';
    String text5 = ' page.';

    return RichText(
      text: TextSpan(
        style: GoogleFonts.fragmentMono(),
        children: [
          TextSpan(
            text: text1,
          ),
          TextSpan(
            text: text2,
            style: const TextStyle(
              fontWeight: AppConstants.bold,
            ),
          ),
          TextSpan(
            text: text3,
          ),
          TextSpan(
            text: text4,
            style: const TextStyle(
              decoration: TextDecoration.underline,
            ),
            recognizer: TapGestureRecognizer()
              ..onTap = () {
                print('URL tapped');
              },
          ),
          TextSpan(
            text: text5,
          ),
        ],
      ),
    );
  }

  Widget _focusSection() {
    String text1 = 'ridha';
    String text2 =
        ' is currently focusing on mobile development, especially in the field of android and flutter.';

    return RichText(
      text: TextSpan(
        style: GoogleFonts.jetBrainsMono(),
        children: [
          TextSpan(
            text: text1,
            style: const TextStyle(
              fontWeight: AppConstants.bold,
            ),
          ),
          TextSpan(
            text: text2,
          ),
        ],
      ),
    );
  }

  Widget _contactSection() {
    String text = 'contact';

    return AppLinkText(
      onTap: () {
        final Uri emailLaunchUri = Uri(
          scheme: 'mailto',
          path: 'ridhaaf@gmail.com',
        );

        launchUrl(emailLaunchUri);
      },
      text: text,
    );
  }

  Widget _linkedinSection() {
    String text = 'linkedin';

    return AppLinkText(
      onTap: () {
        final Uri linkedinLaunchUri = Uri(
          scheme: 'https',
          path: 'www.linkedin.com/in/ridhaaf',
        );

        launchUrl(linkedinLaunchUri);
      },
      text: text,
    );
  }

  Widget _githubSection() {
    String text = 'github';

    return AppLinkText(
      onTap: () {
        final Uri githubLaunchUri = Uri(
          scheme: 'https',
          path: 'github.com/ridhaaf',
        );

        launchUrl(githubLaunchUri);
      },
      text: text,
    );
  }

  Widget _instagramSection() {
    String text = 'instagram';

    return AppLinkText(
      onTap: () {
        final Uri instagramLaunchUri = Uri(
          scheme: 'https',
          path: 'www.instagram.com/portfolionya.ridhaaf',
        );

        launchUrl(instagramLaunchUri);
      },
      text: text,
    );
  }

  Widget _xSection() {
    String text = 'x';

    return AppLinkText(
      onTap: () {
        final Uri xLaunchUri = Uri(
          scheme: 'https',
          path: 'x.com/ridhaaf_',
        );

        launchUrl(xLaunchUri);
      },
      text: text,
    );
  }
}
