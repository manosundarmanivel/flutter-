import 'package:flutter/material.dart';
import 'package:test_app/login.dart';
import 'package:test_app/report.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int current_index = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Builder(builder: (context) {
        return Scaffold(
          drawer: Drawer(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(50),
                    bottomLeft: Radius.circular(50))),
            width: 200,
            child: ListView(
              padding: EdgeInsets.zero,
              children: [
                DrawerHeader(
                  child: Text(
                    'DIALAB',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  decoration:
                      BoxDecoration(color: Color.fromARGB(255, 5, 192, 225)),
                ),
                ListTile(
                  title: Text(
                    "List 1",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => const login()));
                  },
                )
              ],
            ),
          ),
          appBar: AppBar(
            backgroundColor: Color.fromARGB(255, 5, 192, 225),
            toolbarHeight: 60,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(25),
                    bottomLeft: Radius.circular(25))),
            actions: <Widget>[
              IconButton(onPressed: (() {}), icon: Icon(Icons.account_circle))
            ],
            title: Text(
              'DiaLab',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
          body: Center(
            child: ElevatedButton(
              child: Text('NextPage'),
              onPressed: () {
                print('aksd');
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const report()),
                );
              },
            ),
          ),
          bottomNavigationBar: BottomNavigationBar(
              backgroundColor: Color.fromARGB(255, 5, 192, 225),
              unselectedItemColor: Colors.black,
              selectedItemColor: Colors.white,
              currentIndex: current_index,
              onTap: (int k) {
                setState(() {
                  current_index = k;
                });
              },
              items: [
                BottomNavigationBarItem(
                  icon: Icon(Icons.home),
                  label: 'Home',
                ),
                BottomNavigationBarItem(
                    icon: Icon(Icons.personal_injury), label: 'Patient'),
                BottomNavigationBarItem(
                    icon: Icon(Icons.list_alt), label: 'List')
              ]),
        );
      }),
    );
  }
}
