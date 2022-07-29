import 'package:flutter/material.dart';
import 'package:screen/Convasation/convasationScreen.dart';

class ReusableDrawer extends StatelessWidget {
  const ReusableDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.grey[300],
      child: Column(
        children: <Widget>[
          DrawerHeader(
            child: FlutterLogo(),
          ),
          ListTile(
            leading: Icon(Icons.home),
            title: Text('D A S H B O A R D '),
          ),
          ListTile(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const ConvasationScreen(),
                ),
              );
            },
            leading: Icon(Icons.chat),
            title: Text('C O N V S A T I O S  '),
          ),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text('S E T T I N G   '),
          ),
          ListTile(
            leading: Icon(Icons.favorite_outline),
            title: Text('F A V O R I T E '),
          ),
          ListTile(
            leading: Icon(Icons.logout),
            title: Text('L O G O U T  '),
          ),
        ],
      ),
    );
  }
}
