import 'package:flutter/material.dart';

class AccountPageScreen extends StatefulWidget {
  AccountPageScreen({Key? key}) : super(key: key);

  @override
  _AccountPageScreenState createState() => _AccountPageScreenState();
}

class _AccountPageScreenState extends State<AccountPageScreen> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'Account',
        style: TextStyle(
          fontSize: 60,
        ),
      ),
    );
  }
}
