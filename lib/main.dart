import 'package:flutter/material.dart';
import 'package:queue_system/screens/appointment.dart';
import 'package:queue_system/screens/companies.dart';
import 'package:queue_system/screens/statistics.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Queue System',
      theme: ThemeData(
        primarySwatch: Colors.red,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => Companies(),
        Companies.routeName: (context) => Companies(),
        Statistics.routeName: (context) => Statistics(),
        Appointment.routeName: (context) => Appointment(),
      },
    );
  }
}
