import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            "Weather Forecast",
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: Colors.blue[800],
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          padding: EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              TextField(
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.search, color: Colors.blue),
                  filled: true,
                  fillColor: Colors.white,
                  hintText: "Enter City Name",
                  hintStyle: TextStyle(color: Colors.black45),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(color: Colors.transparent, width: 0),
                  ),
                ),
              ),
              SizedBox(height: 20),
              Text(
                "Pushkin 154, Taraz",
                style: TextStyle(fontSize: 30, color: Color(0xFF243E55), fontWeight: FontWeight.w400),
              ),
              Text(
                "Friday, April 19, 2024",
                style: TextStyle(fontSize: 18, color: Color(0xFF004080)),
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      Icon(Icons.wb_sunny_rounded, size: 80, color: Color(0xFFF7F9A6)),
                    ],
                  ),
                  SizedBox(width: 15),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        "14°F",
                        style: TextStyle(fontSize: 45, color: Colors.white),
                      ),
                      Text(
                        "LIGHT SHOW",
                        style: TextStyle(fontSize: 15, color: Colors.grey),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  _buildStatistic("km/hr", "5"),
                  _buildStatistic("%", "3"),
                  _buildStatistic("%", "20"),
                ],
              ),
              SizedBox(height: 20),
              _buildSevenDayWeather(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildStatistic(String label, String value) {
    return Column(
      children: [
        Icon(Icons.ac_unit, size: 45, color: Color(0xFF004080)),
        Text(
          value,
          style: TextStyle(fontSize: 26, color: Colors.white),
        ),
        Text(
          label,
          style: TextStyle(color: Color(0xFF004080), fontSize: 18),
        ),
      ],
    );
  }

  Widget _buildSevenDayWeather() {
    return Column(
      children: [
        Text(
          "7 DAY WEATHER FORECAST",
          style: TextStyle(fontSize: 22, color: Colors.white, fontWeight: FontWeight.w700),
        ),
        SizedBox(height: 10),
        Container(
          height: 100,
          width: 400,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              _buildDayWeather("Friday", "6°F", Icons.wb_sunny_rounded, Colors.yellowAccent),
              SizedBox(width: 14),
              _buildDayWeather("Saturday", "5°F", Icons.cloud, Colors.grey),
              SizedBox(width: 14),
              _buildDayWeather("Sunday", "7°F", Icons.wb_sunny_rounded, Colors.yellowAccent),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildDayWeather(String day, String temperature, IconData icon, Color iconColor) {
    return Container(
      width: 150,
      height: 75,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(day, style: TextStyle(fontSize: 22)),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(temperature, style: TextStyle(fontSize: 16, color: Color(0xFF5F89A3))),
              Icon(icon, color: iconColor),
            ],
          ),
        ],
      ),
    );
  }
}