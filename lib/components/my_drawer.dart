import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'package:flutter/material.dart';
import 'package:login_ui/Contents/colors.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: shadegreydark,
      child: Container(
        child: ListView(
          padding: EdgeInsets.all(0),
          children: [
            const DrawerHeader(
              padding: EdgeInsets.all(0),
              child: UserAccountsDrawerHeader(
                  margin: EdgeInsets.all(0),
                  accountName: Text("S M Ammad Ali"),
                  accountEmail: Text("smammadali05@gmail.com"),
                  currentAccountPicture: CircleAvatar(
                    backgroundImage: AssetImage('../assets/Ammad.jpg'),
                  )),
            ),
            ListTile(
              leading: const Icon(
                CupertinoIcons.home,
                color: Colors.white,
              ),
              title: const Text(
                "Home",
                textScaleFactor: 1.2,
                style: TextStyle(
                  letterSpacing: 4,
                  color: Colors.white,
                ),
              ),
              onTap: () {},
            ),
            const ListTile(
              leading: Icon(
                CupertinoIcons.profile_circled,
                color: Colors.white,
              ),
              title: Text(
                "Profile",
                textScaleFactor: 1.2,
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
            const ListTile(
              leading: Icon(
                CupertinoIcons.mail,
                color: Colors.white,
              ),
              title: Text(
                "Email me",
                textScaleFactor: 1.2,
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
