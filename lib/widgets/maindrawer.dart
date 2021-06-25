import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MainDrawer extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return MainDrawerState();
  }
}

class MainDrawerState extends State<MainDrawer> {


  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              DrawerHeader(
                decoration: BoxDecoration(
                    color: Colors.deepOrange
                ),
                child: Text("Menu",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                  ),
                ),
              ),
              ListTile(
                leading: Icon(Icons.accessibility_new_outlined),
                title: Text("Acessibility"),
                onTap: (){
                  //
                },
              ),
              ListTile(
                leading: Icon(Icons.music_note),
                title: Text("Sounds"),
                onTap: (){
                  //
                },
              ),
              ListTile(
                leading: Icon(Icons.settings),
                title: Text("Settings"),
                onTap:(){
                  //
                },
              ),
            ],  //children
          ),
        ),
    );
  }
}