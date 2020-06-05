import 'package:flutter/material.dart';
import 'package:frino_icons/frino_icons.dart';
import 'package:recipes/widgets/common/badge.dart';

class RecipeItem extends StatefulWidget {
  @override
  _RecipeItemState createState() => _RecipeItemState();
}

class _RecipeItemState extends State<RecipeItem> {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery
        .of(context)
        .size;
    return Container(
      width: size.width,
      height: size.height * 0.35,
      child: Stack(
        children: <Widget>[
          Container(
            width: size.width,
            height: size.height * 0.25,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12.0),
              image: DecorationImage(
                image: NetworkImage(
                  "https://images.unsplash.com/photo-1504674900247-0877df9cc836?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=750&q=80",
                ),
                fit: BoxFit.cover,
              ),
            ),
          ),
          _buildGradient(),
          Align(
            alignment: Alignment.bottomCenter,
            child: _buildBottomContainer(),
          ),
          Positioned(
            bottom: 120,
            right: 90,
            child: FloatingActionButton(
              onPressed: () {},
              heroTag: 'like',
              mini: true,
              elevation: 0.5,
              backgroundColor: Colors.white,
              child: Icon(
                FrinoIcons.f_heart,
                color: Colors.redAccent,
                size: 15,
              ),
            ),
          ),
          Positioned(
            bottom: 120,
            right: 45,
            child: FloatingActionButton(
              onPressed: () {},
              mini: true,
              elevation: 0.5,
              backgroundColor: Colors.white,
              child: Icon(
                FrinoIcons.f_bookmark,
                color: Theme
                    .of(context)
                    .primaryColor,
                size: 15,
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget _buildGradient() {
    final Size size = MediaQuery
        .of(context)
        .size;
    return Opacity(
      opacity: 0.7,
      child: Container(
        width: size.width,
        height: size.height * 0.25,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12.0),
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Colors.white12,
              Colors.black,
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildBottomContainer() {
    final Size size = MediaQuery
        .of(context)
        .size;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30.0),
      child: Container(
        width: size.width,
        height: size.height * 0.2,
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              blurRadius: 2.0,
              color: Colors.black12.withOpacity(0.2),
            ),
          ],
          borderRadius: BorderRadius.circular(18.0),
        ),
        child: Material(
          color: Colors.transparent,
          child: InkWell(
            onTap: () {},
            borderRadius: BorderRadius.circular(18.0),
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  SizedBox(height: 10),
                  Text(
                    "Riz sauce tomate +  viande",
                    style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    "By: Chef Atango",
                    style: TextStyle(fontSize: 10.0, color: Colors.black38),
                  ),
                  SizedBox(height: 5),
                  Row(
                    children: <Widget>[
                      Badge(
                        color: Colors.redAccent,
                        child: Text(
                          "HOT",
                          style: TextStyle(
                            fontSize: 8,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      SizedBox(width: 5),
                      Badge(
                        color: Colors.orangeAccent,
                        child: Text(
                          "Featured",
                          style: TextStyle(
                            fontSize: 8,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  Text(
                    "Recette de riz sauce tomate viande, prépration pour 5 personnes.",
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(fontSize: 10.0, color: Colors.black38),
                  ),
                  SizedBox(height: 5),
                  Spacer(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          Icon(FrinoIcons.f_heart,
                              size: 15, color: Colors.black38),
                          SizedBox(width: 5),
                          Text(
                            "350",
                            style: TextStyle(
                              fontSize: 10,
                              color: Colors.black38,
                              fontWeight: FontWeight.bold,
                            ),
                          )
                        ],
                      ),
                      Row(
                        children: <Widget>[
                          Icon(FrinoIcons.f_clock,
                              size: 15, color: Colors.black38),
                          SizedBox(width: 5),
                          Text(
                            "240 min",
                            style: TextStyle(
                              fontSize: 10,
                              color: Colors.black38,
                              fontWeight: FontWeight.bold,
                            ),
                          )
                        ],
                      ),
                      Row(
                        children: <Widget>[
                          Icon(FrinoIcons.f_user,
                              size: 15, color: Colors.black38),
                          SizedBox(width: 5),
                          Text(
                            "5 persons",
                            style: TextStyle(
                              fontSize: 10,
                              color: Colors.black38,
                              fontWeight: FontWeight.bold,
                            ),
                          )
                        ],
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
