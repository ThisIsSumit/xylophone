import 'package:flutter/material.dart';
import 'package:xylophone/home.dart';
//import 'dart:ui';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      backgroundColor: const Color.fromARGB(232, 9, 245, 221),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(232, 14, 158, 144),
        title: const Center(
          child: Text(
            "make some noice",
            style: TextStyle(
              color: Color.fromARGB(255, 255, 255, 255),
            ),
          ),
        ),
      ),
      body: const Home(),
    ),
  ));
}
