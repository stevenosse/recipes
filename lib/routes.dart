import 'package:flutter/material.dart';

/**
 * Pages import
 */
import 'package:recipes/pages/home.dart';
import 'package:recipes/pages/auth/login.dart';

///
/// Declaring app routes here
///
final Map<String, Widget Function(BuildContext)> routes = {
  "/": (context) => LoginPage(),
  "/home": (context) => HomePage(),
};