import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Weather Forecast'),
          backgroundColor: Colors.blue,
        ),
        body: Column(
          children: <Widget>[
            TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Enter City Name',
              ),
            ),
            Text('Pushkin 154, Taraz'),
            Text('Friday, April 19, 2024'),
            Text('14°F LIGHT SNOW'),
            Row(
              children: <Widget>[
                Text('5 km/hr'),
                Text('3%'),
                Text('20%'),
              ],
            ),
            Text('7 DAY WEATHER FORECAST'),
            Row(
              children: <Widget>[
                Column(
                  children: <Widget>[
                    Text('Friday'),
                    Text('6°F'),
                  ],
                ),
                Column(
                  children: <Widget>[
                    Text('Saturday'),
                    Text('5°F'),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}


