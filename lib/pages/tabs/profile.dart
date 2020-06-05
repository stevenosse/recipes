import 'package:flutter/material.dart';
import 'package:frino_icons/frino_icons.dart';
import 'package:recipes/widgets/common/c_app_bar.dart';

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
          )
        ],
      ),
    );
  }
}
