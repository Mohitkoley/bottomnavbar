import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      home: MyApp()));
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List<BottomNavigationBarItem> _items;
  String _value = "";
  int _index = 0;

  @override
  void initState() {
    _items = new List();
    _items.add(BottomNavigationBarItem(
        icon: Icon(
          Icons.people,
          color: Colors.red,
        ),
        title: Text("NavBar")));
    _items.add(BottomNavigationBarItem(
        icon: Icon(
          Icons.weekend,
          color: Colors.green,
        ),
        title: Text("Weekend")));
    _items.add(BottomNavigationBarItem(
        icon: Icon(
          Icons.message,
          color: Colors.blue,
        ),
        title: Text("Message")));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("exam1"),
      ),
      body: Container(
        padding: EdgeInsets.all(32.0),
        child: Center(
          child: Column(
            children: [Text(_value)
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: _items,
        fixedColor: Colors.blue,
        currentIndex: _index,
        onTap: (int item){
          setState(() {
            _index = item;
            _value = "Current value is: ${_index.toString()}";
          });
        },
      ),
    );
  }
}
