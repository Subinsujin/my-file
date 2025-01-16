import 'package:flutter/material.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Settings'),
      ),
      body: ListView(
        children: <Widget>[
          ListTile(
            title: Text('Account'),
            leading: Icon(Icons.account_circle),
              onTap:() {
              //Navigate to account settings
              },
          ),
          ListTile(
            title: Text('Notifications'),
            leading: Icon(Icons.notifications),
            onTap:() {
              //Navigate to notifications settings
            },
          ),
          ListTile(
            title: Text('Language'),
            leading: Icon(Icons.language),
            onTap:() {
              //Navigate to language settings
            },
          ),
          ListTile(
            title: Text('About'),
            leading: Icon(Icons.info),
            onTap:() {
              //Show app info or about page
            },
          ),
          SwitchListTile(
            title: Text('Dark Mode'),
            value: false,  //Use a variable to toggle dark mode state
            onChanged: (bool value) {
              //Handle dark mode toggle
            },
          ),
        ],
      ),
    );
  }
}