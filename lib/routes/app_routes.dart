import 'package:flutter/material.dart';
import '../core/app_export.dart';
import '../presentation/hamburger_page_screen/hamburger_page_screen.dart';
import '../presentation/profile_details_screen/profile_details_screen.dart';
import '../presentation/security_settings_screen/security_settings_screen.dart';

class AppRoutes {
  static const String initialRoute = '/'; // Define the initial route

  // Define route names for each screen
  static const String hamburgerPageScreen = '/hamburger';
  static const String profileDetailsScreen = '/profile_details';
  static const String securitySettingsScreen = '/security_settings';
  static const String appNavigationScreen = '/app_navigation';

  // Map route names to their respective WidgetBuilders
  static Map<String, WidgetBuilder> routes = { // Set the initial route to AppNavigationScreen
    initialRoute: (context) => HamburgerPageScreen(),
    profileDetailsScreen: (context) => ProfileDetailsScreen(),
    securitySettingsScreen: (context) => SecuritySettingsScreen()
  };
}
