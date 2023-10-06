import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'LiveBola',
      theme: ThemeData(
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.white,
          foregroundColor: Colors.black,
          elevation: 0,
        ),
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('LiveBola'),
      ),
      body: Container(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            // Header
            Container(
              padding: EdgeInsets.only(top: 20),
              child: Column(
                children: [
                  Text('Glad to see you,'),
                  Text(
                    'Mohammad Yasin!',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
                  ),
                ],
              ),
            ),

            Container(
              padding: EdgeInsets.only(top: 20),
              child: Column(
                textDirection: TextDirection.ltr,
                children: [
                  TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Find your favorite club',
                    ),
                  ),
                ],
              ),
            ),

            // Match list
            Container(
              padding: EdgeInsets.only(top: 20),
              child: Column(

                children: [
                  // Live match
                  Column(

                    children: [
                      Text(
                        'Live Score',
                        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
                      ),
                      Card(
                        child: ListTile(
                          title: Text('Premiere League'),
                          subtitle: Text('Chelsea 1 - 16 Manchester City'),
                          trailing: Text('56'),
                        ),
                      ),

                      // Finished match
                      Card(
                        child: ListTile(
                          title: Text('La Liga'),
                          subtitle: Text('Getafe 9 - 0 Real Betis'),
                          trailing: Text('FT'),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),

            Container(
              padding: EdgeInsets.only(top: 20),
              child: Column(
                textDirection: TextDirection.ltr,
                children: [
                  Text(
                    'Finished Matches',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
                  ),
                ],
              ),
            ),

            Container(
              padding: EdgeInsets.only(top: 20),
              child: Column(
                children: [
                  // Live match
                  Column(
                    children: [
                      Card(
                        child: ListTile(
                          title: Text('Premiere League'),
                          subtitle: Text('Arsenal 2 - 1 Manchester United'),
                          trailing: Text('78'),
                        ),
                      ),

                      // Finished match
                      Card(
                        child: ListTile(
                          title: Text('La Liga'),
                          subtitle: Text('Real Madrid 3 - 0 Barcelona'),
                          trailing: Text('FT'),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: '',
          ),
        ],
      ),
    );
  }
}
