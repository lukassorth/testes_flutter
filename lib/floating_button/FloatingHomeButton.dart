import 'package:flutter/material.dart';

class FloatingHomeScreen extends StatefulWidget {
  FloatingHomeScreen({Key? key}) : super(key: key);

  @override
  _FloatingHomeScreenState createState() => _FloatingHomeScreenState();
}

class _FloatingHomeScreenState extends State<FloatingHomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Floating Action Button'),
        centerTitle: true,
      ),
      // floatingActionButton: builNavigateButton(),
      floatingActionButton: buildMessageButton(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      bottomNavigationBar: buildBottomBar(),
    );
  }

  Widget buildMessageButton() => FloatingActionButton.extended(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        foregroundColor: Colors.white,
        backgroundColor: Colors.green,
        icon: Icon(
          Icons.message,
        ),
        label: Text('Mensagens'),
        onPressed: () {},
      );

  /* Widget builNavigateButton() => FloatingActionButton(
        child: Icon(Icons.share),
        backgroundColor: Colors.blue,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(23),
        ),
        onPressed: () => {
          print('Pressionado'),
        },
      ); */

  Widget buildBottomBar() => BottomNavigationBar(
        backgroundColor: Theme.of(context).primaryColor,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.white70,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings',
          ),
        ],
      );
}
