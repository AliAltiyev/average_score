import 'package:flutter/material.dart';

class ApplicationDrawer extends StatefulWidget {
  const ApplicationDrawer({Key? key}) : super(key: key);

  @override
  State<ApplicationDrawer> createState() => _ApplicationDrawerState();
}

class _ApplicationDrawerState extends State<ApplicationDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      semanticLabel: "Calculator",
      child: Column(
        children: [
          const UserAccountsDrawerHeader(
              currentAccountPicture: ClipRRect(
                child: CircleAvatar(
                    backgroundImage:
                        NetworkImage("https://pixy.org/src/10/109515.jpg")),
              ),
              accountName: Text(
                "Матвей",
                style: TextStyle(color: Colors.white, fontSize: 24),
              ),
              accountEmail: Text("alidroid@mail.com")),
          Expanded(
            child: ListView(
              children: [
                const ListTile(
                  leading: Icon(
                    Icons.person_outline_outlined,
                    color: Colors.black54,
                  ),
                  title: Text("User Profile"),
                ),
                InkWell(
                  onTap: () {
                    Scaffold.of(context).closeDrawer();
                  },
                  child: const ListTile(
                    leading: Icon(
                      Icons.settings,
                      color: Colors.black54,
                    ),
                    title: Text("Settings"),
                  ),
                ),
                const ListTile(
                  leading: Icon(
                    Icons.person_add_alt,
                    color: Colors.black54,
                  ),
                  title: Text("Invite Friends"),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
