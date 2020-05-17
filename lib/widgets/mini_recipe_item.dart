import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:frino_icons/frino_icons.dart';

class MiniRecipeItem extends StatefulWidget {
  @override
  _MiniRecipeItemState createState() => _MiniRecipeItemState();
}

class _MiniRecipeItemState extends State<MiniRecipeItem> {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 4.0),
      child: Container(
        width: size.width * 0.5,
        height: 220,
        child: Stack(
          children: <Widget>[
            Container(
              width: size.width * 0.5,
              height: 220,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12.0),
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(
                    "https://images.unsplash.com/photo-1506354666786-959d6d497f1a?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=750&q=80",
                  ),
                ),
              ),
            ),
            _buildGradient(),
            Align(
              alignment: Alignment.topRight,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 30,
                  width: 30,
                  child: FloatingActionButton(
                    mini: true,
                    backgroundColor: Colors.white,
                    onPressed: () {},
                    child: Icon(
                      EvaIcons.heart,
                      size: 15,
                      color: Colors.redAccent,
                    ),
                  ),
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomLeft,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Text(
                      "Japanese Pizza",
                      overflow: TextOverflow.clip,
                      style: TextStyle(
                        fontSize: 18.0,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Row(
                      children: <Widget>[
                        Icon(EvaIcons.clock, size: 10, color: Colors.white70),
                        SizedBox(width: 5),
                        Text(
                          "240 min",
                          overflow: TextOverflow.clip,
                          style: TextStyle(
                            fontSize: 10.0,
                            color: Colors.white70,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget _buildGradient() {
    final Size size = MediaQuery.of(context).size;
    return Opacity(
      opacity: 0.7,
      child: Container(
        width: size.width * 0.5,
        height: 220,
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
}
