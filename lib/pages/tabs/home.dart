import 'package:flutter/material.dart';
import 'package:frino_icons/frino_icons.dart';
import 'package:recipes/widgets/mini_recipe_item.dart';
import 'package:recipes/widgets/recipe_item.dart';

class HomeTab extends StatefulWidget {
  @override
  _HomeTabState createState() => _HomeTabState();
}

class _HomeTabState extends State<HomeTab> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12.0),
      child: Column(
        children: <Widget>[_buildAppbar(), _buildBody()],
      ),
    );
  }

  Widget _buildAppbar() {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12.0),
      child: Row(
        children: <Widget>[
          Text(
            "Recipes",
            style: TextStyle(
              fontSize: 18.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          Spacer(),
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

  Widget _buildBody() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        RecipeItem(),
        SizedBox(height: 20),
        Text(
          "Most popular",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 18.0,
          ),
        ),
        Text(
          "Below are the most popular recipes",
          style: TextStyle(
            fontSize: 12.0,
            color: Colors.black38,
          ),
        ),
        SizedBox(height: 10),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: <Widget>[
              MiniRecipeItem(),
              MiniRecipeItem(),
              MiniRecipeItem(),
            ],
          ),
        )
      ],
    );
  }
}
