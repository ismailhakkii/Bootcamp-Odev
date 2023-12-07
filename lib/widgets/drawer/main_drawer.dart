import 'package:flutter/material.dart';

class MainDrawer extends StatelessWidget {
  Widget buildListTile(String title, IconData icon, VoidCallback tapHandler) {
    return ListTile(
      leading: Icon(icon, size: 26),
      title: Text(
        title,
        style: const TextStyle(
          fontFamily: 'RobotoCondensed',
          fontSize: 24,
          fontWeight: FontWeight.bold,
        ),
      ),
      onTap: tapHandler,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: <Widget>[
          Container(
  height: 120,
  width: double.infinity,
  padding: EdgeInsets.all(20),
  alignment: Alignment.centerLeft,
  color: Theme.of(context).colorScheme.secondary, 
  child: Text(
    '',
    style: TextStyle(
      fontWeight: FontWeight.w900,
      fontSize: 30,
      color: Theme.of(context).colorScheme.onSecondary, 
    ),
  ),
),

          const SizedBox(height: 20),
          buildListTile(
            'İletişim',
            Icons.phone,
            () {
              Navigator.of(context).pushReplacementNamed('/');
            },
          ),
          buildListTile(
            'Ayarlar',
            Icons.settings,
            () {
              Navigator.of(context).pushReplacementNamed('/settings');
            },
          ),
          buildListTile(
            'Hakkında',
            Icons.info,
            () {
              Navigator.of(context).pushReplacementNamed('/about');
            },
          ),
        ],
      ),
    );
  }
}
