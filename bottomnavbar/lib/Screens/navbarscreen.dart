// ignore_for_file: camel_case_types
import 'package:bottomnavbar/Page/chatpage.dart';
import 'package:bottomnavbar/Page/feedpage.dart';
import 'package:bottomnavbar/Page/homepage.dart';
import 'package:bottomnavbar/Page/profilepage.dart';
import 'package:flutter/material.dart';

class navbarscreen extends StatefulWidget {
  const navbarscreen({Key? key}) : super(key: key);

  @override
  _navbarscreenState createState() => _navbarscreenState();
}

class _navbarscreenState extends State<navbarscreen> {
  int currentIndex =0;
  final screens =[
    HomePage(),
    FeedPage(),
    ChatPage(),
    ProfilePage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: screens[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        onTap: (index)=>setState(() => currentIndex=index),
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: "Home",
              backgroundColor: Colors.blue,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: "Feed",
            backgroundColor: Colors.red,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.chat),
            label: "Chat",
            backgroundColor: Colors.deepPurple,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: "Profile",
            backgroundColor: Colors.green,
          ),
        ],
      ),
    );
  }
}
