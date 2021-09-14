import 'package:flutter/material.dart';
import 'package:reporta/utility/app_route.dart';

import 'modules/onboarding/ui/onboarding_screen.dart';

void main() {
  runApp(Reporta());
}

class Reporta extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: OnboardingScreen(),
      routes: AppRouter.routes,
      initialRoute: AppRouter.onboarding,
      debugShowCheckedModeBanner: false,
    );
  }
}
