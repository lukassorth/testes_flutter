import 'package:flutter/material.dart';

class ChatPageScreen extends StatefulWidget {
  ChatPageScreen({Key? key}) : super(key: key);

  @override
  _ChatPageScreenState createState() => _ChatPageScreenState();
}

class _ChatPageScreenState extends State<ChatPageScreen> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'Chat',
        style: TextStyle(
          fontSize: 60,
        ),
      ),
    );
  }
}
