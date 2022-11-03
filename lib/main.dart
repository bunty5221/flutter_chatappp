import 'package:flutter/material.dart';
import 'package:whatsapp/pages/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'hat app',
      theme: ThemeData(
       
        primaryColor: Color(0xff075e54),
        // ignore: deprecated_member_use
        accentColor: Color(0xff25d366),
      ),
      debugShowCheckedModeBanner: false,
      home: const MyHomePage(title: 'Chat App'),
    );
  }
}

