import 'package:flutter/material.dart';
import 'package:stackscreen/secondpage.dart';

class Myfirstpage extends StatefulWidget {
  const Myfirstpage({super.key});

  @override
  State<Myfirstpage> createState() => _MyfirstpageState();
}

class _MyfirstpageState extends State<Myfirstpage> {
  int myIndex = 0;
  List<Widget> myWiget = [
    MyStackScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: myWiget[myIndex],
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.white,
        selectedItemColor: Colors.deepPurple,
        // showSelectedLabels: false,
        showUnselectedLabels: true,
        onTap: (value) {
          setState(() {
            print(value);
            myIndex = value;
            print(myIndex);
          });
        },
        currentIndex: myIndex,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.compass_calibration),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.watch_later_rounded),
            label: 'Profile',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Settings',
          ),
        ],
      ),
    );
  }
}
