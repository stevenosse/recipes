import 'package:flutter/material.dart';

/**
 * Pages import
 */
import 'package:recipes/pages/login.dart';

///
/// Declaring app routes here
///
final Map<String, Widget Function(BuildContext)> routes = {
  "/": (context) => LoginPage()
};