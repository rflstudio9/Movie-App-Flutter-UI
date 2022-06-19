
import 'dart:async';

import 'package:custom_navigation_bar/custom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:youtube/pages/home_page.dart';
import 'package:youtube/pages/search_page.dart';


void main() {
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    statusBarColor: Colors.black,
  ));
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          // This is the theme of your application.
          //
          // Try running your application with "flutter run". You'll see the
          // application has a blue toolbar. Then, without quitting the app, try
          // changing the primarySwatch below to Colors.green and then invoke
          // "hot reload" (press "r" in the console where you ran "flutter run",
          // or simply save your changes to "hot reload" in a Flutter IDE).
          // Notice that the counter didn't reset back to zero; the application
          // is not restarted.
          primarySwatch: Colors.blue,
        ),
        home: HomeScreen());
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  int _currentIndex = 0;
  final tabs = [
    HomePage(),
    Text("Watch",style: TextStyle(color: Colors.white),),
    SearchPage(),
    Text("Profile",style: TextStyle(color: Colors.white),)
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(child: tabs[_currentIndex]),
      bottomNavigationBar: CustomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        selectedColor: Color(0xffFFB41D1D),
        unSelectedColor: Colors.grey,
        backgroundColor: Colors.black,
        strokeColor: Color(0xffFFB41D1D),
        items: [
          CustomNavigationBarItem(
              icon: Icon(Icons.home_filled)),
          CustomNavigationBarItem(
              icon: Icon(Icons.play_circle_outline_rounded)),
          CustomNavigationBarItem(
              icon: Icon(Icons.search_rounded)),
          CustomNavigationBarItem(
              icon: Icon(Icons.person_outline_outlined))
        ],
      ),
    );
  }
}


