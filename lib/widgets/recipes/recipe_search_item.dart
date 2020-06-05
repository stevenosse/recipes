import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:frino_icons/frino_icons.dart';
import 'package:recipes/widgets/common/badge.dart';

class RecipeSearchItem extends StatefulWidget {
  final String image;
  final String title;
  final String description;
  final String author;

  RecipeSearchItem({
    this.image,
    this.title,
    this.description,
    this.author,
  });

  @override
  _RecipeSearchItemState createState() => _RecipeSearchItemState();
}

class _RecipeSearchItemState extends State<RecipeSearchItem> {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 4.0),
      child: Row(
        children: <Widget>[
          _buildImagePreview(),
          SizedBox(width: 10),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
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
              SizedBox(height: 5),
              Text(
                widget.title,
                style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Container(
                width: size.width * 0.5,
                child: Text(
                  widget.description.substring(0, 30) + "...",
                  overflow: TextOverflow.fade,
                  style: TextStyle(fontSize: 12.0, color: Colors.black26),
                ),
              ),
              SizedBox(height: 5),
              Container(
                width: size.width * 0.5,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Icon(
                          FrinoIcons.f_heart,
                          size: 10,
                          color: Colors.black38,
                        ),
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
                        Icon(FrinoIcons.f_clock, size: 10, color: Colors.black38),
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
                        Icon(FrinoIcons.f_user, size: 10, color: Colors.black38),
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
                ),
              )
            ],
          )
        ],
      ),
    );
  }

  _buildImagePreview() {
    final Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width * 0.3,
      height: 100,
      child: Stack(
        children: <Widget>[
          Container(
            width: size.width * 0.3,
            height: 100,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12.0),
              image: DecorationImage(
                fit: BoxFit.cover,
                image: NetworkImage(
                  widget.image,
                ),
              ),
            ),
          ),
          _buildGradient(),
        ],
      ),
    );
  }

  Widget _buildGradient() {
    final Size size = MediaQuery.of(context).size;
    return Opacity(
      opacity: 0.7,
      child: Container(
        width: size.width,
        height: size.height,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12.0),
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Colors.white12,
              Colors.black38,
              Colors.black,
            ],
          ),
        ),
      ),
    );
  }
}
