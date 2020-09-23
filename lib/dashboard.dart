import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'home_screen.dart';
import 'myProfile.dart';

class Dashboard extends StatefulWidget {
  @override
  _DashboardState createState() => _DashboardState();
}
class _DashboardState extends State<Dashboard>{
  int _selectedIndex=0;
  List<Widget> pageWidget=<Widget>[
    HomeScreen(),
    MyProfile(),
  ];
  @override
  void initState() {

  }
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(0),
          child: AppBar(
            backgroundColor: Colors
                .black,
          )),
      backgroundColor: Colors.white,
      body: Center(
        child: pageWidget[_selectedIndex],
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.people_outline_sharp,),
            title: Text('My Batches'),
          ),
          BottomNavigationBarItem(
            icon: Icon(
                Icons.person,),
            title: Text('My Profile'),
          ),
        ],
        currentIndex: _selectedIndex,
        unselectedItemColor: Colors.black,
        selectedItemColor: Colors.green[300],
        onTap: _onItemTapped,
      ),
    );
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

}