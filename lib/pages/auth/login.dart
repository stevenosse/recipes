import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'file:///G:/Projets/Personal/recipes/lib/widgets/common/action_button.dart';
import 'package:recipes/widgets/c_text_form_field.dart';
import 'package:recipes/widgets/shapes.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(
        statusBarIconBrightness: Brightness.dark,
        statusBarColor: Colors.white,
      ),
    );
    final TextStyle linkStyle = TextStyle(
      fontSize: 12,
      color: Theme.of(context).primaryColor,
    );
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: <Widget>[
          Container(
            width: size.width,
            height: size.height,
            child: CustomPaint(
              painter: FooterPainter(),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 18.0),
            child: ListView(
              children: <Widget>[
                SizedBox(height: size.height * 0.15),
                Container(
                  width: 150,
                  height: 150,
                  child: Image.asset("assets/images/burger.png",
                      fit: BoxFit.contain),
                ),
                SizedBox(height: 20),
                Text(
                  "Recipes",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 24.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  "Login to your account to continue sharing your kitchen tricks!",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 10.0,
                    color: Colors.black38,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 10),
                CTextFormField(
                  prefixIcon: Icon(EvaIcons.person, color: Colors.black38),
                  hintText: "Login",
                ),
                SizedBox(height: 20),
                CTextFormField(
                  prefixIcon: Icon(EvaIcons.lock, color: Colors.black38),
                  hintText: "Password",
                ),
                SizedBox(height: 20),
                ActionButton(
                  onPress: () {
                    Navigator.of(context).pushNamed('/home');
                  },
                  title: "Connexion",
                ),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text("Mot de passe oublié ?", style: linkStyle),
                    Text("Inscription", style: linkStyle)
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
