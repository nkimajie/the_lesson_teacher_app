import 'package:flutter/material.dart';
import 'package:the_lesson_teacher/splash.dart';

import 'web.dart';

void main() => runApp(MyApp());


class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'The Lesson Teacher',
      theme: ThemeData(
        primaryColor: Colors.deepOrange[800],
        // primarySwatch: Colors.deepOrange,
      ),
      home: Splash(),
      // home: viewWebsite(),
    );
  }
}