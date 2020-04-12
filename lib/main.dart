import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
//import 'package:http/http.dart' as http;

void main() => runApp(MyApp());

//createOptions( String heading, String destination){
//  return ( ListTile(
//    title: Text('$heading'),
//    onTap: () {
//      // Update the state of the app.
//      // ...
//      //Closing the drawer
//      Navigator.pop();
//    },
//  )
//  );
//}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: BaseApp(),
      routes: <String, WidgetBuilder>{
        './UserProfile': (context) => UserProfile(),
        './ChatBot': (context) => ChatBot(),
        './Location': (context) => Location(),
      },
    );
  }
}

class BaseApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: ListView(padding: EdgeInsets.zero, children: [
          DrawerHeader(
            child: Text('Options'),
            decoration: BoxDecoration(
              color: Colors.teal.shade300,
            ),
          ),
          ListTile(
            title: Text('User Dashboard'),
            //This tab will have info of User health also from the database
            onTap: () {
              // Update the state of the app.
              // ...
              Navigator.pushNamed(context, './UserProfile');
            },
          ),
          ListTile(
            title: Text('Chat Bot'),
            onTap: () {
              // Update the state of the app.
              // ...
              Navigator.pushNamed(context, './ChatBot');
            },
          ),
          ListTile(
            title: Text('Your Location'),
            onTap: () {
              // Update the state of the app.
              // ...
              Navigator.pushNamed(context, './Location');
            },
          ),
          ListTile(
            title: Text('Feedback'),
            // here they can order necessary things also
            // and can tell if they need housekeeping
            onTap: () {
              // Update the state of the app.
              // ...
            },
          ),
          ListTile(
            title: Text('Your Health'),
            // AI implementation and telling what risk they are
            // posed to
            onTap: () {
              // Update the state of the app.
              // ...
            },
          )
        ]),
      ),
      appBar: AppBar(
        backgroundColor: Color(0xFF69d296),
        title: Center(
          child: Text('Covid Care'),
        ),
      ),
      body: ListView(
        padding: EdgeInsets.all(10.0),
        children: [
          Card(
            child: Column(
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Expanded(
                      flex: 1,
                      child: Text('Total Number of Cases',
                          style: TextStyle(
                            color: Colors.teal[500],
                            fontWeight: FontWeight.bold,
                          )),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      flex: 1,
                      child: Text('Total Number of deaths',
                          style: TextStyle(
                            color: Colors.teal[500],
                            fontWeight: FontWeight.bold,
                          )),
                    )
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Expanded(
                        flex: 1,
                        child: Text('1000000',
                            style: TextStyle(
                              color: Colors.teal[500],
                              fontWeight: FontWeight.bold,
                            )),
                      ),
                      Expanded(
                        flex: 1,
                        child: Text('10000',
                            style: TextStyle(
                              color: Colors.teal[500],
                              fontWeight: FontWeight.bold,
                            )),
                      )
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
                children: [
                  Container(
                    color: Colors.teal[700],
                    height: 40,
                    child: Center(
                        child: Text('WHO Updates',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ))),
                  ),
                  Container(
                    padding: EdgeInsets.all(20),
                    height: 300,
                    child:
                        Text('Many countries are suffering from coronavirus'),
                  ),
                ],
              )),
          Card(
              margin: EdgeInsets.all(25.0),
              color: Colors.teal[200],
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Container(
                    color: Colors.teal[700],
                    height: 40,
                    child: Center(
                        child: Text('Health Ministry Updates',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ))),
                  ),
                  Container(
                    padding: EdgeInsets.all(20),
                    height: 300,
                    child: Text('Total 100 deaths today'),
                  ),
                ],
              )),
        ],
      ),
    );
  }
}

class UserProfile extends StatelessWidget{
  @override
  Widget build (BuildContext context){
   return Scaffold(
     appBar: AppBar(
       title: Text('User Profile'),
       ),
     body: ListView(
       children: <Widget>[
         Center(child: Text('Welcome User'))
       ],
     ),
     );
     }

}

class ChatBot extends StatelessWidget{
  @override
  Widget build (BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text('Chat Bot'),
      ),
      body: ListView(
        children: <Widget>[
          Center(child: Text('Type in a query'))
        ],
      ),
    );
  }

}

class Location extends StatelessWidget{
  @override
  Widget build (BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text('Your Location'),
      ),
      body: ListView(
        children: <Widget>[
          Center(child: Text('See your location on Google Map'))
        ],
      ),
    );
  }

}