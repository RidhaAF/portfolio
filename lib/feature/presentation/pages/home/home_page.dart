import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:portfolio/core/presentation/routes/app_routes.dart';
import 'package:portfolio/core/presentation/widgets/app_body.dart';
import 'package:portfolio/core/presentation/widgets/contact_section.dart';
import 'package:portfolio/core/presentation/widgets/default_spacer.dart';
import 'package:portfolio/core/presentation/widgets/link_section.dart';
import 'package:portfolio/core/presentation/widgets/profile_image.dart';
import 'package:portfolio/core/utils/constants/app_constants.dart';
import 'package:portfolio/core/utils/constants/profile_constant.dart';
import 'package:portfolio/core/utils/helpers/text_span_helper.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AppBody(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(
            vertical: AppConstants.defaultMargin * 2,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const ProfileImage(),
              const DefaultSpacer(),
              _introductionSection(),
              const DefaultSpacer(),
              _worksSection(context),
              const DefaultSpacer(),
              _focusSection(),
              const DefaultSpacer(),
              const ContactSection(
                  email: ProfileConstant.email, text: 'contact'),
              const DefaultSpacer(size: AppConstants.defaultMargin / 4),
              _profilesSection(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _introductionSection() {
    return SelectableText.rich(
      TextSpan(
        children: [
          TextSpanHelper.textSpan(ProfileConstant.name, bold: true),
          TextSpanHelper.textSpan(
              ' is a software engineer/mobile developer (android & flutter developer) known for crafting sleek and user-friendly mobile applications. He holds a Bachelor\'s degree in '),
          TextSpanHelper.linkSpan(
              'https://if.unpas.ac.id', 'Informatics Engineering'),
          TextSpanHelper.textSpan(' from '),
          TextSpanHelper.linkSpan(
              'https://www.unpas.ac.id', 'Universitas Pasundan'),
          TextSpanHelper.textSpan(
              ' and has approximately 2 years of experience in the field.'),
        ],
      ),
    );
  }

  Widget _worksSection(BuildContext context) {
    return SelectableText.rich(
      TextSpan(
        children: [
          TextSpanHelper.textSpan('You can check out some of '),
          TextSpanHelper.textSpan(ProfileConstant.name, bold: true),
          TextSpanHelper.textSpan('\'s work on the '),
          TextSpanHelper.linkSpan(
            '#',
            'projects',
            bold: false,
            onTap: () => context.go(AppRoutes.projects),
          ),
          TextSpanHelper.textSpan(' page.'),
        ],
      ),
    );
  }

  Widget _focusSection() {
    return SelectableText.rich(
      TextSpan(
        children: [
          TextSpanHelper.textSpan(ProfileConstant.name, bold: true),
          TextSpanHelper.textSpan(
              ' is currently focusing on mobile development, especially in the field of android and flutter.'),
        ],
      ),
    );
  }

  Widget _profilesSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: ProfileConstant.profiles
          .map((profile) => Padding(
                padding: const EdgeInsets.symmetric(
                    vertical: AppConstants.defaultMargin / 4),
                child: LinkSection(path: profile.url, text: profile.name),
              ))
          .toList(),
    );
  }
}
