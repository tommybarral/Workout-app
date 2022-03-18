import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:workout_app/screens/home_page_screen.dart';
import 'package:workout_app/screens/training_details_screen.dart';

void main() {
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePageScreen(),
      routes: {
        HomePageScreen.routeName: (context) => HomePageScreen(),
        TrainingDetailsScreen.routeName: (context) => TrainingDetailsScreen(),
      },
    );
  }
}
