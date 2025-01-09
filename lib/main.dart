import 'package:flutter/material.dart';
import 'package:mybookingapp/home.dart';
import 'package:mybookingapp/home.dart';

void main() => runApp(TravelBookingApp());

class TravelBookingApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Travel Booking',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHome(),
      
    );

  }
}
