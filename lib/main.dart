import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(backgroundColor: Color(0xFF69d296),
          title: Center(
            child: Text('Covid Care'
            ),
          ),
        ) ,

      ),

    );
  }
}

