import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHome(),
    );
  }
}

class MyHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page'),
      ),
      body: Center(
        child: ConstrainedBox(
          constraints: BoxConstraints(maxWidth: 400),
          child: ListView(
            children: <Widget>[
              HeaderImage(),
              TravelInfo(),
              DescriptionText(),
              BookButton(),
            ],
          ),
        ),
      ),
    );
  }
}

class HeaderImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity, // Ensures the image covers the entire width
      child: Image.asset(".dart_tool/images/image1.jpeg",
      
        fit: BoxFit.cover, 
      ),
    );
  }
}

class TravelInfo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double iconSize = MediaQuery.of(context).size.width * 0.05;

    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            'Karachi , Pakistan',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 8),
          Row(
            children: <Widget>[
              Flexible(
                child: Row(
                  children: <Widget>[
                    Icon(Icons.location_pin, color: Colors.red, size: iconSize),
                    SizedBox(width: 4),
                    Flexible(child: Text('Karachi', style: TextStyle(fontSize: 16),)),
                  ],
                ),
              ),
              SizedBox(width: 16),
              Flexible(
                child: Row(
                  children: <Widget>[
                    Icon(Icons.star, color: Colors.yellow, size: iconSize),
                    SizedBox(width: 4),
                    Flexible(child: Text('4.8 km')),
                  ],
                ),
              ),
              SizedBox(width: 16),
              Flexible(
                child: Row(
                  children: <Widget>[
                    Icon(Icons.directions_car, color: Colors.blue, size: iconSize),
                    SizedBox(width: 4),
                    Flexible(child: Text('30Km')),
                  ],
                ),
              ),
              SizedBox(width: 16),
              Flexible(
                child: Row(
                  children: <Widget>[
                    Icon(Icons.restaurant, color: Colors.green, size: iconSize),
                    SizedBox(width: 4),
                    Flexible(child: Text('10km.')),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class DescriptionText extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Text(
        "Karachi, Pakistan's largest city, is a bustling metropolis known for its vibrant culture and economic significance. It faces numerous challenges, including severe water shortages and infrastructure issues. Despite these problems, Karachi remains a hub of activity, hosting various cultural events and festivals that celebrate its diverse heritage and artistic talent.",),
    );
  }
}

class BookButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
          padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        ),
        child: Text(
          'Book my trip',
          style: TextStyle(fontSize: 14),
        ),
      ),
    );
  }
}
