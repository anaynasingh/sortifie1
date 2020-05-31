

import 'package:flutter/material.dart';

void main(List<String>args) {
  runApp(new MaterialApp(
    home : MyApp(),
  ));
}
class MyApp extends StatefulWidget{
  @override
  _MyAppState createState()=> _MyAppState();

}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:new AppBar(
        title: Center(
          child: Text("Sortifie"),
           
          ),
          
        backgroundColor: Colors.lightBlueAccent,
      ),
      backgroundColor: Colors.lightBlueAccent[200],

      drawer: new Drawer(
        child:ListView(
          children: <Widget>[
            UserAccountsDrawerHeader(
              accountName: new Text("Full Name", style: new TextStyle(fontWeight: FontWeight.bold, fontSize: 17.0),),
              accountEmail: new Text("name@gmail.com"),
              
              decoration: new BoxDecoration( color: Colors.blue)

            ),
            ListTile(
              leading: Icon(Icons.apps),
              title: Text("Homepage"),
            ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text("Profile"),
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text("Settings"),
            ),
            ListTile(
              leading: Icon(Icons.vpn_key),
              title: Text("Log Out"),
            ),
            
          
          ],
        ) ,
      ),

     body: Container(
      padding: EdgeInsets.all(30.0),
      child: GridView.count(
        crossAxisCount: 2,
        children: <Widget>[
          Card(
            margin:EdgeInsets.all(8.0),
            child: InkWell(
              onTap:(){},
              splashColor: Colors.green[200],
              child: Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Icon(Icons.book, size: 70.0),
                    Text("Subjects", style: new TextStyle(fontSize: 17.0))
                  ],
                ),)
            ),
          ),
                   Card(
            margin:EdgeInsets.all(8.0),
            child: InkWell(
              onTap:(){},
              splashColor: Colors.green[200],
              child: Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Icon(Icons.calendar_today, size: 70.0),
                    Text("Calendar", style: new TextStyle(fontSize: 17.0))
                  ],
                ),)
            ),
          ),
                   Card(
            margin:EdgeInsets.all(8.0),
            child: InkWell(
              onTap:(){},
              splashColor: Colors.green[200],
              child: Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Icon(Icons.table_chart, size: 70.0),
                    Text("Timetable", style: new TextStyle(fontSize: 17.0))
                  ],
                ),)
            ),
          ),
                   Card(
            margin:EdgeInsets.all(8.0),
            child: InkWell(
              onTap:(){},
              splashColor: Colors.green[200],
              child: Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Icon(Icons.person_outline, size: 70.0),
                    Text("Attendance", style: new TextStyle(fontSize: 17.0))
                  ],
                ),)
            ),
          ),
                   Card(
            margin:EdgeInsets.all(8.0),
            child: InkWell(
              onTap:(){},
              splashColor: Colors.green[200],
              child: Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Icon(Icons.signal_wifi_4_bar, size: 70.0),
                    Text("Speed Test", style: new TextStyle(fontSize: 17.0))
                  ],
                ),)
            ),
          ),
                   Card(
            margin:EdgeInsets.all(8.0),
            child: InkWell(
              onTap:(){},
              splashColor: Colors.green[200],
              child: Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Icon(Icons.add, size: 70.0),
                    Text("", style: new TextStyle(fontSize: 17.0))
                  ],
                ),)
            ),
          ),
        ],
      )
    )
    );
  }
  }
