// ignore_for_file: file_names, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: <Widget>[
          UserAccountsDrawerHeader(
            accountName: Text('JOSE ESCAMILLA'),
            accountEmail: Text('@Developer and owner permissions'),
            currentAccountPicture: CircleAvatar(
              backgroundColor: Colors.black,
              child: Text(
                'J',
                style: TextStyle(fontSize: 40.0),
              ),
            ),
          ),
          ListTile(
              title: Text('AMAZON'),
              leading: Icon(Icons.shopping_cart),
              onTap: () {
                launch("https://www.amazon.com.mx/");
              }),
          Divider(),
          ListTile(
            title: Text('STEREN'),
            leading: Icon(Icons.cable),
            onTap: () {
              launch("https://www.steren.com.mx/");
            },
          ),
          Divider(),
          ListTile(
              title: Text('OFFICE MAX'),
              leading: Icon(Icons.shop),
              onTap: () {
                launch("https://www.officemax.com.mx/");
              }),
          Divider(),
          ListTile(
            title: Text('GOOGLE DRIVE'),
            leading: Icon(Icons.book_online),
            onTap: () {
              launch("https://drive.google.com/");
            },
          ),
          Divider(),
          ListTile(
            title: Text('GOOGLE MAPS'),
            leading: Icon(Icons.book_online),
            onTap: () {
              launch("https://www.google.com.mx/maps");
            },
          ),
          Divider(),
          ListTile(
            title: Text('INGRESAR'),
            leading: Icon(Icons.open_in_browser_outlined),
            onTap: () {},
          ),
          Divider(),
          ListTile(
            title: Text('SALIR'),
            leading: Icon(Icons.window),
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
