import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    final imageurl="https://scontent.fccu2-3.fna.fbcdn.net/v/t39.30808-6/294547951_1757545387914530_1608761366972931872_n.jpg?_nc_cat=111&ccb=1-7&_nc_sid=730e14&_nc_ohc=HMdVpJTQ83gAX8WKVuD&_nc_ht=scontent.fccu2-3.fna&oh=00_AfCka3wkoI0AGJnD7TMnnzgoSDebgRR6B5om753bwVcmUA&oe=63EAF221";
    return Drawer(
      child:Container(
        color: Colors.deepPurple,
        child: ListView(
          children: [
            DrawerHeader(
              padding: EdgeInsets.zero,
              child: UserAccountsDrawerHeader(
                margin: EdgeInsets.zero,
                accountName: Text("Nawed Alam"),
                accountEmail:Text("nawedalam890@gmail.com") ,
                currentAccountPicture: CircleAvatar(
                  backgroundImage: NetworkImage(imageurl),
                ),
                ),
            ),
             ListTile(
              leading: Icon(
                CupertinoIcons.home,color: Colors.white,
              ),
              title: Text("Home",
              textScaleFactor: 1.2
              ,style: TextStyle(
                color: Colors.white,
              ),),
            ),
             ListTile(
              leading: Icon(
                CupertinoIcons.profile_circled,color: Colors.white,
              ),
              title: Text("Profile",
              textScaleFactor: 1.2
              ,style: TextStyle(
                color: Colors.white,
              ),),
            ),
            ListTile(
              leading: Icon(
                CupertinoIcons.mail,color: Colors.white,
              ),
              title: Text("Email me",
              textScaleFactor: 1.2
              ,style: TextStyle(
                color: Colors.white,
              ),),
            )
          ],
        ),
      ),
    );
  }
}