import 'package:flutter/material.dart';

class ActionButton extends StatelessWidget {
  final String title;
  final Function onPress;
  final Widget icon;

  ActionButton({@required this.title, @required this.onPress, this.icon});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return Container(
      width: size.width,
      height: 50,
      child: RaisedButton.icon(
        onPressed: onPress,
        elevation: 0.3,
        color: Theme.of(context).primaryColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8.0),
        ),
        icon: icon ?? Container(),
        label: Text(
          title,
          style: TextStyle(
            color: Colors.white,
            fontSize: 14.0,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
