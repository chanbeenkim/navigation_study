import 'package:flutter/material.dart';
import 'package:navigation_study/screen/home_screen.dart';
import 'package:navigation_study/screen/route_one_screen.dart';
import 'package:navigation_study/screen/route_three_screen.dart';
import 'package:navigation_study/screen/route_two_screen.dart';

const HOME_ROUTE = '/';

void main() {
  runApp(
    MaterialApp(
      // home: HomeScreen(),
      initialRoute: '/',
      // www.google.com -> www.google.com/
      routes: {
        HOME_ROUTE: (context) => HomeScreen(),
        '/one': (context) => RouteOneScreen(),
        '/two': (context) => RouteTwoScreen(),
        '/three': (context) => RouteThreeScreen(),
      },
    ),
  );
}
