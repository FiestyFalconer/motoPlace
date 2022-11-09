import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}
/*
class Index extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}*/

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Naviation Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const FirstPage(),
    );
  }
}

class SecondPage extends StatelessWidget {
  const SecondPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
        onTap: (value) {
          if (value == 0)
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return const FirstPage();
            }));
          if (value == 1)
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return const ThirdPage();
            }));
        },
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
      ),
      body: const Center(
        child: Text(
          'PAGE PROFIL',
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}

class ThirdPage extends StatelessWidget {
  const ThirdPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
        onTap: (value) {
          if (value == 0)
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return const FirstPage();
            }));
          if (value == 2)
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return const SecondPage();
            }));
        },
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
      ),
      body: const Center(
        child: Text(
          'PAGE ACHAT',
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}

class FirstPage extends StatelessWidget {
  const FirstPage({Key? key}) : super(key: key);

//   int _selectedIndex = 0;
// void _onItemTapped(int index) {

//       _selectedIndex = index;

//     //_navigation(index);
//   }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
        onTap: (value) {
          if (value == 2)
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return const SecondPage();
            }));
          if (value == 1)
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return const ThirdPage();
            }));
        },
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
            onPressed: () {},
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
    );
  }
}
