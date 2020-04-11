import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
//import 'package:http/http.dart' as http;


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
            ),
            body: ListView(
                  padding: EdgeInsets.only(top:20),
                  children: [
                    Card(
                      child: Column(
                        children: <Widget>[
                          Row(
                            children: <Widget>[
                              Text('Total Number of Cases',
                              style:TextStyle(
                                color:Colors.teal[500],
                                fontWeight: FontWeight.bold,
                              )),
                              SizedBox(
                                width: 10,
                              ),
                              Text('Total Number of deaths',
                                  style:TextStyle(
                                    color:Colors.teal[500],
                                    fontWeight: FontWeight.bold,
                                  ))
                            ],
                          ),

                          Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: <Widget>[
                                Text('1000000',
                                    style:TextStyle(
                                      color:Colors.teal[500],
                                      fontWeight: FontWeight.bold,
                                    )),

                                Text('10000',
                                    style:TextStyle(
                                      color:Colors.teal[500],
                                      fontWeight: FontWeight.bold,
                                    ))
                              ],
                            ),
                          )
                        ],
                      ),
                    ),

                    Card(
                        margin: EdgeInsets.all(25.0),
                        color: Colors.teal[200],
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children:[
                            Container(
                              color:Colors.teal[700],
                              height:40,
                              child: Center(
                                  child:Text('WHO Updates',
                                      style:TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color:Colors.white,
                                      ))
                              ),
                            ),
                            Container(
                          padding: EdgeInsets.all(20),
                          height: 300,
                          child: Text(
                              'Many countries are suffering from coronavirus'),
                          ),

                          ],
                        )
                    ),
                    Card(
                        margin: EdgeInsets.all(25.0),
                        color: Colors.teal[200],
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children:[
                            Container(
                              color:Colors.teal[700],
                              height:40,
                              child: Center(
                                  child:Text('Health Ministry Updates' ,
                                  style:TextStyle(
                                    fontWeight: FontWeight.bold,
                                        color:Colors.white,
                                  ))
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.all(20),
                              height: 300,
                              child: Text(
                                  'Total 100 deaths today'),
                            ),

                          ],
                        )
                    ),
                ],
    ),
            ),
        );

  }


}

