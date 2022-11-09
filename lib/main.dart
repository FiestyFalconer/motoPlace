import 'package:flutter/material.dart';

void main() {
  runApp(Index());
}

class Index extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<Index> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
    // Navigator.push(
    //   context,
    //   MaterialPageRoute(builder: (context) => SecondRoute()),
    // );
  }

  // _onTap(int tabIndex) {
  //   setState(() {
  //     _selectedIndex = tabIndex;
  //   });
  //   switch (tabIndex) {
  //     case 0:
  //       break;
  //     case 1:
  //       break;
  //     case 2:
  //       break;
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      backgroundColor: Color(0xff252525),
      appBar: AppBar(
        title: new Text(
          'MotoPlace',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        backgroundColor: Color(0xff000000),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Color(0xff000000),
        items: [
          new BottomNavigationBarItem(
            label: 'Accueil',
            icon: Icon(Icons.home, color: Colors.white, size: 28),
          ),
          new BottomNavigationBarItem(
            icon: Icon(Icons.motorcycle, color: Colors.white, size: 28),
            label: 'Achat',
          ),
          new BottomNavigationBarItem(
            icon: Icon(Icons.person, color: Colors.white, size: 28),
            label: 'Profil',
          ),
        ],
        currentIndex: _selectedIndex, //New
        onTap: _onItemTapped,
      ),
      body: ListView(
        padding: const EdgeInsets.all(8),
        scrollDirection: Axis.vertical,
        children: <Widget>[
          Container(
              child: Text(
            'Test',
            style: TextStyle(color: Colors.white, fontSize: 25),
          )),
          Container(
            padding: EdgeInsets.all(8),
            decoration: BoxDecoration(
                color: Colors.red, borderRadius: BorderRadius.circular(20)),
            height: 200,
            width: 200,
            margin: const EdgeInsets.only(top: 0.0, bottom: 0.0),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: SizedBox.fromSize(
                size: Size.fromRadius(48),
                child: new Image.asset(
                  'assets/images/image.jpg',
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          ElevatedButton(
            child: Text('Like'),
            onPressed: () {
              print('Hello');
            },
          ),
          Container(
              child: Text(
            'SUZUKI',
            style: TextStyle(color: Colors.white, fontSize: 25),
          )),
          Container(
            padding: EdgeInsets.all(8),
            decoration: BoxDecoration(
                color: Colors.red, borderRadius: BorderRadius.circular(20)),
            height: 200,
            width: 200,
            margin: const EdgeInsets.only(top: 0.0, bottom: 0.0),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: SizedBox.fromSize(
                size: Size.fromRadius(48),
                child: new Image.asset(
                  'assets/images/SuzukiGSX-S-750-EVO3.jpg',
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          ElevatedButton(
            child: Text('Like'),
            onPressed: () {
              print('Hello');
            },
          ),
          Container(
              child: Text(
            'HONDA',
            style: TextStyle(color: Colors.white, fontSize: 25),
          )),
          Container(
            padding: EdgeInsets.all(8),
            decoration: BoxDecoration(
                color: Colors.red, borderRadius: BorderRadius.circular(20)),
            height: 200,
            width: 200,
            margin: const EdgeInsets.only(top: 0.0, bottom: 0.0),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: SizedBox.fromSize(
                size: Size.fromRadius(48),
                child: new Image.asset(
                  'assets/images/hondaCmx1100Rebel1.jpg',
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          ElevatedButton(
            child: Text('Like'),
            onPressed: () {
              print('Hello');
            },
          ),
        ],
      ),
    ));
  }
}

class SecondRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Second Route'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pop(context); // Navigate back to first route when tapped.
          },
          child: const Text('Go back!'),
        ),
      ),
    );
  }
}
