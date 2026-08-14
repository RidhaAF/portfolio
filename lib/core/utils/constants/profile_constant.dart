import 'package:portfolio/feature/data/models/profile/profile.dart';

class ProfileConstant {
  static const String name = 'ridha';
  static const String email = 'ridhaaf@gmail.com';
  static const String linkedIn = 'https://www.linkedin.com/in/ridhaaf/';
  static const String github = 'https://github.com/RidhaAF';
  static List<Profile> profiles = [
    Profile(name: 'linkedin', url: linkedIn),
    Profile(name: 'github', url: github),
  ];
}
