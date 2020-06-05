import 'package:flutter/material.dart';
import 'package:frino_icons/frino_icons.dart';

class CAppBar extends StatelessWidget {
  final String title;
  final bool hideSearchButton;

  CAppBar({this.title, this.hideSearchButton = false});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 12.0),
      child: Row(
        children: <Widget>[
          Text(
            title ?? "No title",
            style: TextStyle(
              fontSize: 18.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          Spacer(),
          if(!this.hideSearchButton)
            IconButton(
              icon: Icon(FrinoIcons.f_search, size: 18),
              onPressed: () {},
            ),
          IconButton(
            icon: Icon(FrinoIcons.f_settings, size: 18),
            onPressed: () {},
          )
        ],
      ),
    );
  }
}