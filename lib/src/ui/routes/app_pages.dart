import 'package:flutter/material.dart';
import 'package:whatsapp_clone_ui/src/ui/pages/pages.dart';
import 'package:whatsapp_clone_ui/src/ui/routes/app_routes.dart';

class AppPages {
  static Route<dynamic> routes(RouteSettings settings) {
    switch (settings.name) {
      case AppRoutes.home:
        return MaterialPageRoute(builder: (_) => const HomePage());
      default:
        return MaterialPageRoute(builder: (_) => const Scaffold());
    }
  }
}
