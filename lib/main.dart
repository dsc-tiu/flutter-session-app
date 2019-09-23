import 'dart:io';
import 'package:dsc_app/home_page.dart';
import 'package:flutter/material.dart';
main() => runApp(MaterialApp(
      home: MyApp(),
    ));

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("DSC TIU Flutter"),
        backgroundColor: Colors.red,
      ),
      body: Container(
        color: Colors.amberAccent,
        child: Center(
          child: RaisedButton(
            onPressed: () {
              
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (_) => HomePage()));
            },
            child: Text(
              "DSC",
              style: TextStyle(
                color: Colors.white,
                fontSize: 40.0,
              ),
            ),
            color: Colors.red,
          ),
        ),
      ),
      drawer: Drawer(
        child: Container(
          color: Colors.blue,
          child: ListView(
            children: <Widget>[
              UserAccountsDrawerHeader(
                otherAccountsPictures: <Widget>[
                  CircleAvatar(
                    backgroundColor: Colors.red,
                  ),
                  CircleAvatar(
                    backgroundColor: Colors.yellowAccent[700],
                  ),
                ],
                decoration: BoxDecoration(color: Colors.purple),
                accountName: Text(
                  'DSC TIU',
                  style: TextStyle(fontSize: 20),
                ),
                currentAccountPicture: CircleAvatar(
                  backgroundColor: Colors.red,
                  child: Text(
                    'D',
                    style: TextStyle(fontSize: 30),
                  ),
                ),
                accountEmail:
                    Text('ABC@gmail.com', style: TextStyle(fontSize: 15)),
              ),
              ListTile(
                leading: Icon(
                  Icons.home,
                  size: 40,
                ),
                title: Text(
                  'Home',
                  style: TextStyle(fontSize: 25),
                ),
                onTap: (){
                  Navigator.of(context).pop();
                   Navigator.of(context)
                    .push(MaterialPageRoute(builder: (_) => HomePage()));
                }),
              Divider(),
              ListTile(
                leading: Icon(
                  Icons.apps,
                  size: 40,
                ),
                onTap: (){
                  exit(0);
                },
                title: Text(
                  'Apps',
                  style: TextStyle(fontSize: 25),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
