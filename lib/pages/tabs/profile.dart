import 'package:flutter/material.dart';
import 'package:frino_icons/frino_icons.dart';
import 'package:recipes/widgets/common/c_app_bar.dart';
import 'package:recipes/widgets/recipes/recipe_item.dart';
import 'package:recipes/widgets/recipes/recipe_search_item.dart';

class ProfileTab extends StatefulWidget {
  @override
  _ProfileTabState createState() => _ProfileTabState();
}

class _ProfileTabState extends State<ProfileTab> with SingleTickerProviderStateMixin {
  TabController _tabController;

  @override
  void initState() {
    _tabController = TabController(vsync: this, length: 3);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return Container(
      child: Column(
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20.0),
              boxShadow: [
                BoxShadow(
                  color: Colors.black12,
                  blurRadius: 2.0
                )
              ],
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12.0),
              child: Column(
                children: <Widget>[
                  CAppBar(
                    hideSearchButton: true,
                    title: "Profile",
                  ),
                  SizedBox(height: 10),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 12.0),
                    child: Row(
                      children: <Widget>[
                        Container(
                          width: 100,
                          height: 100,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(60),
                            image: DecorationImage(
                              image: NetworkImage(
                                  "https://images.unsplash.com/photo-1510915228340-29c85a43dcfe?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=750&q=80"),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        SizedBox(width: 10),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              "Atango Bertrand",
                              style: TextStyle(
                                fontSize: 18.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Container(
                              width: size.width * 0.55,
                              child: Text(
                                "Passioned, hardworking, motivated and talented chef",
                                overflow: TextOverflow.fade,
                                style: TextStyle(
                                  fontSize: 12.0,
                                  color: Colors.black38,
                                ),
                              ),
                            ),
                            SizedBox(height: 20),
                          ],
                        )
                      ],
                    ),
                  ),
                  SizedBox(height: 10),
                  TabBar(
                    controller: _tabController,
                    indicatorColor: Theme.of(context).primaryColor,
                    labelStyle: TextStyle(fontSize: 12.0),
                    unselectedLabelColor: Colors.black26,
                    tabs: <Widget>[
                      Tab(
                        text: "Activity",
                        icon: Icon(FrinoIcons.f_news, size: 15),
                      ),
                      Tab(
                        icon: Icon(FrinoIcons.f_cook, size: 15),
                        text: "Recipes",
                      ),
                      Tab(
                        icon: Icon(FrinoIcons.f_star_outline, size: 15),
                        text: "Reviews",
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
          SizedBox(height: 10),
          Expanded(
            child: TabBarView(
              controller: _tabController,
              children: <Widget>[
                _buildActivity(),
                _buildRecipes(),
                Container(),
              ],
            ),
          )
        ],
      ),
    );
  }

  _buildActivity() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12.0),
      child: ListView(
        children: <Widget>[
          RecipeItem(),
          SizedBox(height: 20),
          RecipeItem(),
        ],
      ),
    );
  }

  _buildRecipes() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12.0),
      child: Column(
        children: <Widget>[
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
}
