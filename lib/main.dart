import 'package:flutter/material.dart';
import 'package:stepper2_ui/screen/home/view/home_screen.dart';

void main()
{
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/':(context) => HomeScreen(),
      },
    ),
  );
}