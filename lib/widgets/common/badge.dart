import 'package:flutter/material.dart';

class Badge extends StatelessWidget {
  final Widget icon;
  final Widget child;
  final Color color;

  Badge({this.icon, this.child, this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: Padding(
        padding: const EdgeInsets.all(4.0),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            if(icon != null) icon,
            child,
          ],
        ),
      ),
    );
  }
}