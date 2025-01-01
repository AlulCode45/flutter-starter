import 'package:flutter/material.dart';

class Drawercomponent extends StatelessWidget {
  const Drawercomponent({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          ListTile(
            leading: Icon(Icons.local_fire_department),
            title: Text('ACode'),
          ),
        ],
      ),
    );
  }
}
