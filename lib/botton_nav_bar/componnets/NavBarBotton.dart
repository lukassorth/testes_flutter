import 'package:flutter/material.dart';
import 'package:testes_flutter/botton_nav_bar/screens/AccountScreen.dart';
import 'package:testes_flutter/botton_nav_bar/screens/ChatScreen.dart';
import 'package:testes_flutter/botton_nav_bar/screens/FavoritesScreen.dart';
import 'package:testes_flutter/botton_nav_bar/screens/HomeScreen.dart';

class NavBarBotton extends StatefulWidget {
  NavBarBotton({Key? key}) : super(key: key);

  @override
  _NavBarBottonState createState() => _NavBarBottonState();
}

class _NavBarBottonState extends State<NavBarBotton> {
  int _currentIndex = 0;

  final _screens = [
    HomePageScreen(),
    FavoritesPageScreen(),
    ChatPageScreen(),
    AccountPageScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text('Meu aplicativo De Testes'),
        ),
      ),
      body: _screens[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.red,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.black12,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        type: BottomNavigationBarType.fixed,
        currentIndex: _currentIndex,
        onTap: (index) => setState(() => _currentIndex = index),
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: 'Favoritos',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.chat),
            label: 'Chat',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Conta',
          ),
        ],
      ),
    );
  }
}
