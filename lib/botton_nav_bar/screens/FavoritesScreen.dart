import 'package:flutter/material.dart';

class FavoritesPageScreen extends StatefulWidget {
  FavoritesPageScreen({Key? key}) : super(key: key);

  @override
  _FavoritesPageScreenState createState() => _FavoritesPageScreenState();
}

class _FavoritesPageScreenState extends State<FavoritesPageScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          'Favoritos',
          style: TextStyle(
            fontSize: 60,
            color: Colors.red,
          ),
        ),
      ),
    );
  }
}
