// import 'package:flutter/material.dart';

// void main() => runApp(MyApp());

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       theme: ThemeData.light(),
//       home: Scaffold(
//         appBar: AppBar(
//           backgroundColor: Colors.red,
//           title: Text('Hello'),
//         ),
//         body: MyBody(),
//         drawer: Drawer(
//           child: Column(
//             children: <Widget>[
//               UserAccountsDrawerHeader(
//                 accountEmail: Text('abc@gamil.com'),
//               )
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

// class MyBody extends StatefulWidget {
//   @override
//   _MyBodyState createState() => _MyBodyState();
// }

// class _MyBodyState extends State<MyBody> {
//   String str = 'DSC TIU';
//   @override
//   Widget build(BuildContext context) {
//     return SingleChildScrollView(
//       child: Center(
//           child: Column(
//         children: <Widget>[
//           Text(
//             str,
//             style: TextStyle(fontSize: 40),
//           ),
//           RaisedButton(
//             child: Text('Change'),
//             onPressed: () {
//               setState(() {
//                 str = 'GDG KOLKATA';
//               });
//             },
//           ),
//           Container(
//             // color: Colors.green,
//             decoration: BoxDecoration(
//                 gradient: LinearGradient(
//                     colors: [Colors.blue, Colors.green],
//                     begin: Alignment.topLeft,
//                     end: Alignment.bottomRight)),
//             child: Center(
//                 child: Text(
//               'Hello World',
//               style: TextStyle(fontSize: 30),
//             )),
//             height: 200,
//             width: 200,
//           ),
//           Image.network(
//               'https://pbs.twimg.com/profile_images/1111670607026884609/ma2jqJKH_400x400.png'),
//           Container(
//             // color: Colors.green,
//             decoration: BoxDecoration(
//                 gradient: LinearGradient(
//                     colors: [Colors.blue, Colors.green],
//                     begin: Alignment.topLeft,
//                     end: Alignment.bottomRight)),
//             child: Center(
//                 child: Text(
//               'Hello World',
//               style: TextStyle(fontSize: 30),
//             )),
//             height: 200,
//             width: 200,
//           ),
//         ],
//       )),
//     );
//   }
// }
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
        title: Text("DSC Flutter"),
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
                    backgroundColor: Colors.green,
                  ),
                  CircleAvatar(
                    backgroundColor: Colors.yellow,
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
