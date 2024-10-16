import 'package:doctor_appoint/Screen/home_screen.dart';
import 'package:doctor_appoint/Screen/messages_screen.dart';
import 'package:doctor_appoint/Screen/schedule.dart';
import 'package:doctor_appoint/Screen/setting_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NavbarRoots extends StatefulWidget {
  const NavbarRoots({super.key});

  @override
  State<NavbarRoots> createState() => _NavbarRootsState();
}

class _NavbarRootsState extends State<NavbarRoots> {
  int _selectedIndex = 0;
  final _screen = [
    //Home Screen
    HomeScreen(),
    //Messages Screen
    MessagesScreen(),
    //Schedule Screen
    ScheduleScreen(),
    //Setting Screen
    SettingScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: _screen[_selectedIndex],
        bottomNavigationBar: Container(
            height: 80,
            child: BottomNavigationBar(
              backgroundColor: Colors.white,
              type: BottomNavigationBarType.fixed,
              selectedItemColor: Color(0xFF7165D6),
              unselectedItemColor: Colors.black26,
              selectedLabelStyle: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 15,
              ),
              currentIndex: _selectedIndex,
              onTap: (index) {
                setState(() {
                  _selectedIndex = index;
                });
              },
              items: [
                BottomNavigationBarItem(
                    icon: Icon(Icons.home_filled), label: "Home"),
                BottomNavigationBarItem(
                    icon: Icon(CupertinoIcons.chat_bubble_text_fill),
                    label: "Message"),
                BottomNavigationBarItem(
                    icon: Icon(Icons.calendar_month), label: "Shedule"),
                BottomNavigationBarItem(
                    icon: Icon(Icons.settings), label: "setting"),
              ],
            ),
            ),
        );
    }
}