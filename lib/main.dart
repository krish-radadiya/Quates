
import 'package:flutter/material.dart';
import 'package:quate/screens/homepage.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(useMaterial3: true),
      routes: {
        '/':(context) => const homepage(),
      },
    ),
  );
}
