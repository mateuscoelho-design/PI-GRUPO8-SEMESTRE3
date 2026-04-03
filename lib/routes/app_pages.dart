import 'package:flutter/material.dart';
import 'package:PIGRUPO8SEMESTRE3main/routes/app_routes.dart';

import 'package:PIGRUPO8SEMESTRE3main/ui/login_screen.dart';
import 'package:PIGRUPO8SEMESTRE3main/ui/cadastro_screen.dart';
import 'package:PIGRUPO8SEMESTRE3main/ui/splash_page.dart';
import 'package:PIGRUPO8SEMESTRE3main/ui/home_screen.dart';

abstract class AppPages {
  static Map<String, WidgetBuilder> get routes => {
    AppRoutes.login: (_) => const LoginScreen(),
    AppRoutes.register: (_) => const CadastroScreen(),
    AppRoutes.home: (_) => const HomePage(),
    AppRoutes.splash: (_) => const SplashPage(),
  };
}
