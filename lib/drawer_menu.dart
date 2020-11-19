import 'package:flutter/material.dart';


class DrawerMenu extends StatefulWidget {
  @override
  _DrawerMenuState createState() => _DrawerMenuState();
}

class _DrawerMenuState extends State<DrawerMenu> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: Column(
          children: [
            UserAccountsDrawerHeader(
              accountName: Text("omerozkokeli"),
              accountEmail: Text("omerozkokeli23@gmail.com"),
              currentAccountPicture: Image.network(
                  "https://itcraftapps.com/wp-content/uploads/2019/03/Flutter-Cover.png"),
              otherAccountsPictures: [
                CircleAvatar(
                  backgroundColor: Colors.purple,
                  child: Text("AK"),
                ),
                CircleAvatar(
                  backgroundColor: Colors.grey,
                  child: Text("EA"),
                ),
              ],
            ),
            Expanded(
              child: ListView(
                children: [
                  ListTile(
                    leading: Icon(Icons.home),
                    title: Text("Ana Sayfa"),
                    trailing: Icon(Icons.chevron_right),
                  ),
                  ListTile(
                    leading: Icon(Icons.call),
                    title: Text("Ara"),
                    trailing: Icon(Icons.chevron_right),
                  ),
                  ListTile(
                    leading: Icon(Icons.account_box),
                    title: Text("Profil"),
                    trailing: Icon(Icons.chevron_right),
                  ),
                  Divider(),
                  InkWell(
                    onTap: (){
                    },
                    splashColor: Colors.cyan,
                    child: ListTile(
                      leading: Icon(Icons.home),
                      title: Text("Ana Sayfa"),
                      trailing: Icon(Icons.chevron_right),
                    ),
                  ),
                  AboutListTile(
                    applicationName: "Cmd Proje 2",
                    applicationIcon: Icon(Icons.save),
                    applicationVersion: "2.0",
                    child: Text("About Us"),
                    applicationLegalese: null,
                    icon: Icon(Icons.keyboard),
                    aboutBoxChildren: [
                      Text("Child 1 "),
                      Text("Child 2 "),
                      Text("Child 3 "),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
