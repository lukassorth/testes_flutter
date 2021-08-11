import 'dart:math';

import 'package:flutter/material.dart';

class WeatherHomePage extends StatefulWidget {
  WeatherHomePage({Key? key}) : super(key: key);

  @override
  _WeatherHomePageState createState() => _WeatherHomePageState();
}

class _WeatherHomePageState extends State<WeatherHomePage> {
  Color _backgroundColor = Colors.red;
  String _smiley = '🥵';
  int _graus = 45;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: _backgroundColor,
      appBar: AppBar(
        title: Text('Weather App'),
        centerTitle: true,
      ),
      body: Container(
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              _smiley,
              style: TextStyle(fontSize: 100),
            ),
            const SizedBox(height: 24),
            Text(
              '$_graus°C',
              style: TextStyle(fontSize: 80),
            ),
            TextButton(
              onPressed: _changeWeather,
              child: Text(
                '🌟 Trocar Clima',
                style: TextStyle(
                  fontSize: 24,
                  color: Colors.white,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  void _changeWeather() {
    final _counter = Random().nextInt(2);

    setState(() {
      switch (_counter) {
        case 0:
          _smiley = '🥶';
          _graus = _nextNumber(min: -20, max: 0);
          _backgroundColor = Colors.blueAccent.shade700;
          break;
        case 1:
          _smiley = '🥶';
          _graus = _nextNumber(min: -20, max: 0);
          _backgroundColor = Colors.blueAccent.shade700;
          break;
      }
    });
  }

  int _nextNumber({required int min, required int max}) =>
      min + Random().nextInt(max - min + 1);
}
