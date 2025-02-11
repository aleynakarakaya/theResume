import 'package:flutter/material.dart';
import 'package:the_resume/views/home/home_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'The Resume',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.black),
        useMaterial3: true,
        // textTheme: Theme.of(context).textTheme.apply(fontFamily: '')
      ),
      home: HomeView(),
    );
  }
}