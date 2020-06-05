import 'package:flutter/material.dart';
import 'package:frino_icons/frino_icons.dart';
import 'package:recipes/widgets/common/c_app_bar.dart';

class SettingsTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final headerStyle = TextStyle(color: Colors.black26);
    final titleStyle = TextStyle(fontWeight: FontWeight.bold);
    final subtitleStyle = TextStyle(fontSize: 12.0);
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 12.0),
      child: Column(
        children: <Widget>[
          CAppBar(
            title: "Settings",
          ),
          Text(
            "Edit your preferences settings, your account and notifications settings",
            style: TextStyle(
              fontSize: 12.0,
              color: Colors.black26,
            ),
          ),
          Expanded(
            child: ListView(
              children: <Widget>[
                ListTile(
                  title: Text("General settings", style: headerStyle),
                  dense: true,
                ),
                ListTile(
                  leading: Icon(
                    FrinoIcons.f_user,
                    size: 20,
                    color: Theme.of(context).primaryColor,
                  ),
                  title: Text("My account", style: titleStyle),
                  subtitle: Text("Edit account settings", style: subtitleStyle),
                ),
                Divider(),
                ListTile(
                  leading: Icon(
                    FrinoIcons.f_bell,
                    size: 20,
                    color: Theme.of(context).primaryColor,
                  ),
                  title: Text("Notifications", style: titleStyle),
                  subtitle: Text("Notifications settings", style: subtitleStyle),
                  trailing: Switch(
                    value: true,
                    onChanged: (bool value){},
                    activeColor: Theme.of(context).primaryColor,
                  ),
                ),
                Divider(),
                ListTile(
                  title: Text("Other settings", style: headerStyle),
                  dense: true,
                ),
                ListTile(
                  leading: Icon(
                    FrinoIcons.f_share,
                    size: 20,
                    color: Theme.of(context).primaryColor,
                  ),
                  title: Text("Invite friend", style: titleStyle),
                  subtitle: Text("Send an invitation link to a friend", style: subtitleStyle),
                ),
                Divider(),
                ListTile(
                  leading: Icon(
                    FrinoIcons.f_question,
                    size: 20,
                    color: Theme.of(context).primaryColor,
                  ),
                  title: Text("Get Help", style: titleStyle),
                  subtitle: Text("Contact the support", style: subtitleStyle),
                ),
                Divider(),
                ListTile(
                  leading: Icon(
                    FrinoIcons.f_chat,
                    size: 20,
                    color: Theme.of(context).primaryColor,
                  ),
                  title: Text("Give us a feedback", style: titleStyle),
                  subtitle: Text("Rate the app on playstore", style: subtitleStyle),
                ),
                Divider(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
