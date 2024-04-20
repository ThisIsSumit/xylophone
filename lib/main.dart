import 'package:flutter/material.dart';
import 'package:xylophone/home.dart';
//import 'dart:ui';

void main() {
  runApp(
    const MaterialApp(
      home: Scaffold(
        backgroundColor: Color.fromARGB(232, 0, 0, 0),
        body: Home(),
      ),
    ),
  );
}
