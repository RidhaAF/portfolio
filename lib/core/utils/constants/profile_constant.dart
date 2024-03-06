import 'package:portfolio/feature/data/models/profile/profile.dart';

class ProfileConstant {
  static const String name = 'ridha';
  static const String email = 'ridhaaf@gmail.com';
  static const String linkedIn = 'https://www.linkedin.com/in/ridhaaf/';
  static const String github = 'https://github.com/RidhaAF';
  static const String instagram =
      'https://www.instagram.com/portfolionya.ridhaaf';
  static const String x = 'https://x.com/ridhaaf_';
  static List<Profile> profiles = [
    Profile(name: 'linkedin', url: linkedIn),
    Profile(name: 'github', url: github),
    Profile(name: 'instagram', url: instagram),
    Profile(name: 'x', url: x),
  ];
}
