import 'package:flutter/material.dart';
import 'package:frino_icons/frino_icons.dart';
import 'package:recipes/widgets/c_text_form_field.dart';
import 'package:recipes/widgets/common/badge.dart';
import 'package:recipes/widgets/common/c_app_bar.dart';
import 'package:recipes/widgets/recipes/recipe_search_item.dart';

class DiscoverTab extends StatefulWidget {
  @override
  _DiscoverTabState createState() => _DiscoverTabState();
}

class _DiscoverTabState extends State<DiscoverTab> {
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12.0),
      child: ListView(
        children: <Widget>[
          CAppBar(title: "Discover", hideSearchButton: true),
          Text(
            "Discover recipes from the world's greatest chefs...",
            style: TextStyle(
              fontSize: 12.0,
              color: Colors.black26,
            ),
          ),
          SizedBox(height: 10),
          CTextFormField(
            prefixIcon: Icon(FrinoIcons.f_search),
            hintText: "Type a recipe, chef, category name...",
          ),
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                "Recent search",
                style: TextStyle(
                  fontSize: 12.0,
                  color: Colors.black45,
                ),
              ),
              FlatButton(
                onPressed: () {},
                padding: EdgeInsets.all(0),
                child: Text(
                  "Clear all",
                  style: TextStyle(
                    fontSize: 12.0,
                    color: Colors.black38,
                  ),
                ),
              )
            ],
          ),
          SizedBox(height: 10),
          Wrap(
            runSpacing: 10.0,
            children: <Widget>[
              Badge(
                icon: _buildBadgeIcon(),
                color: Colors.grey[300],
                child: _buildBadgeText("Koki plantains mûrs"),
              ),
              SizedBox(width: 10),
              Badge(
                icon: _buildBadgeIcon(),
                color: Colors.grey[300],
                child: _buildBadgeText("Taro sauce jaune"),
              ),
              SizedBox(width: 10),
              Badge(
                icon: _buildBadgeIcon(),
                color: Colors.grey[300],
                child: _buildBadgeText("Ekomba"),
              )
            ],
          ),
          SizedBox(height: 20),
          RecipeSearchItem(
            image: "https://dpbfm6h358sh7.cloudfront.net/images/17570657/1187781975.jpg",
            title: "Taro sauce jaune",
            description: "Envie de vous faire plaisir avec un succulent plat de Taro + sauce jaune et champignon, poulet, peau ou viande de boeuf, n'hésitez plus.",
            author: "ECWID"
          ),
          SizedBox(height: 10),
          RecipeSearchItem(
            image: "https://dpbfm6h358sh7.cloudfront.net/images/17570657/1117753196.jpg",
            title: "Beignets haricots",
            description: "Envie de vous faire plaisir avec des beignets accompagnés d'haricots et de bouillie de maïs, n'hésitez plus.",
            author: "ECWID",
          )
        ],
      ),
    );
  }

  _buildBadgeIcon() {
    return Row(
      children: <Widget>[
        Icon(
          Icons.access_time,
          size: 12.0,
          color: Colors.grey[600],
        ),
        SizedBox(width: 5),
      ],
    );
  }

  _buildBadgeText(String text) {
    return Text(
      text,
      style: TextStyle(
        fontSize: 10,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
