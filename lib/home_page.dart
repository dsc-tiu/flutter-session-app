import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      backgroundColor: Colors.amber,
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.android),
        onPressed: () => Navigator.of(context).pop(),
      ),
    );
  }
}