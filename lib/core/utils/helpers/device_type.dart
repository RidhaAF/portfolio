import 'package:flutter/material.dart';

enum DeviceType {
  mobile,
  tablet,
  desktop,
}

DeviceType getDeviceType(BuildContext context) {
  final double deviceWidth = MediaQuery.of(context).size.width;
  if (deviceWidth > 1024) {
    return DeviceType.desktop;
  } else if (deviceWidth > 600) {
    return DeviceType.tablet;
  } else {
    return DeviceType.mobile;
  }
}

bool isMobile(BuildContext context) {
  return getDeviceType(context) == DeviceType.mobile;
}

bool isTablet(BuildContext context) {
  return getDeviceType(context) == DeviceType.tablet;
}

bool isDesktop(BuildContext context) {
  return getDeviceType(context) == DeviceType.desktop;
}
