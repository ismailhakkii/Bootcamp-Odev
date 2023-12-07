import 'package:flutter/material.dart';

class SettingsScreen extends StatefulWidget {
  @override
  _SettingsScreenState createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  bool isDarkMode = false;
  String language = 'English';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Ayarlar'),
      ),
      body: ListView(
        children: [
          
           ListTile(
            leading: Icon(Icons.person), 
            title: Text('Hesabım'),
            onTap: () {
            },
          ),
          SwitchListTile(
            title: Text('Karanlık Mod'),
            value: isDarkMode,
            onChanged: (bool value) {
              setState(() {
                isDarkMode = value;
              });
            },
          ),
          ListTile(
            title: Text('Dil Seçenekleri'),
            onTap: () {
            },
          ),
        ],
      ),
    );
  }
}
