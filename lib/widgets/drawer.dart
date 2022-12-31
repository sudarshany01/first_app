import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


import 'package:six_app/utils/routes.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final imageUrl=
    "https://m.media-amazon.com/images/I/71hIfcIPyxS._AC_UY436_FMwebp_QL65_.jpg";
    return Drawer(
      child: Container(
        color: Colors.deepPurple,
        child: ListView(
          children: [
            DrawerHeader(

              padding: EdgeInsets.zero,
                child:UserAccountsDrawerHeader(

                  margin: EdgeInsets.zero,

                  accountName: Text("Sudarshan Yadav"),
                  accountEmail: Text("sudarshany9654@gmail.com"),
                  currentAccountPicture: CircleAvatar(
                    radius: 50,

                    backgroundImage: NetworkImage(imageUrl),
                  ),

                ),
              ),
            ListTile(
              leading: Icon(
                  CupertinoIcons.home,
                color: Colors.white,
              ),
              title: Text(
                "Home",
                textScaleFactor: 1.2,
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
            ListTile(
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
            ListTile(
              leading: Icon(
                CupertinoIcons.mail,
                color: Colors.white,
              ),
              title: Text(
                "Emailme",
                textScaleFactor: 1.2,
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
            ListTile(
              leading: Icon(
                CupertinoIcons.settings,
                color: Colors.white,
              ),
              title: Text(
                "Setting",
                textScaleFactor: 1.2,
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
            ListTile(
              leading: Icon(
                CupertinoIcons.option,
                color: Colors.white,
              ),
              title: Text(
                "Option",
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
