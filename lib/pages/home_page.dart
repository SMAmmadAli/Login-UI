import 'package:flutter/material.dart';
import 'package:login_ui/Contents/colors.dart';
import 'package:login_ui/pages/login_page.dart';

import '../components/my_drawer.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: shadegreydark,
        elevation: 0,
        title: Text("HomePage"),
      ),
      backgroundColor: bgColor,
      body: ListView.builder(
          itemCount: mylist.length - 1,
          itemBuilder: (context, index) {
            return ListTile(
              leading: const CircleAvatar(
                backgroundImage: AssetImage('../assets/Ammad.jpg'),
                radius: 35,
              ),
              title: Text(mylist[0]),
              subtitle: Text(mylist[1]),
              trailing: Icon(
                Icons.arrow_back,
                size: 20,
                color: shadegreydark,
              ),
            );
          }),
      drawer: MyDrawer(),
    );
  }
}
