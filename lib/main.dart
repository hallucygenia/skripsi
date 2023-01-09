import 'package:flutter/material.dart';
import 'package:identifikasi_tanaman/pages/home_page.dart';
import 'package:identifikasi_tanaman/pages/navbar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flowers App GetX',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Navbar(),
    );
  }
}
