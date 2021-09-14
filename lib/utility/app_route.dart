import 'package:flutter/material.dart';
import 'package:reporta/modules/Home/ui/home.dart';
import 'package:reporta/modules/incident/ui/incident_details.dart';
import 'package:reporta/modules/incident/ui/incident_screen.dart';
import 'package:reporta/modules/insight/ui/insight_screen.dart';
import 'package:reporta/modules/new_incident/ui/incident_form_screen.dart';
import 'package:reporta/modules/onboarding/ui/onboarding_screen.dart';

class AppRouter {
  static String home = "/home";
  static String onboarding = "/onboarding";
  static String incidentForm = "/incident-form";
  static String insight = "/insight";
  static String incident = "/incident";
  static String incident_details = "/incident-details";
  static Map<String, WidgetBuilder> routes = {
    onboarding: (ct) => OnboardingScreen(),
    // home: (ct) => Home(),
    incidentForm: (ct) => IncidentFormScreen(),
    insight: (ct) => InsightScreen(),
    incident: (ct) => IncidentScreen(),
    incident_details: (ct) => IncidentDetails(),
  };
}
