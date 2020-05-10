import 'package:flutter/material.dart';
import 'package:recipes/routes.dart';

main(List<String> args) {
  return runApp(Recipes());
}

class Recipes extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      title: "Recipes",
      routes: routes,
      theme: ThemeData(
        backgroundColor: Colors.white,
        fontFamily: 'Gordita',
        primaryColor: Color(0XFFFF9100),
        cursorColor: Colors.black,
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}