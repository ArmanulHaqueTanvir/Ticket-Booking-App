import 'package:flutter/material.dart';
import 'package:ticket_app/screens/HomeScreen.dart';
import 'package:ticket_app/screens/profile_screen.dart';
import 'package:ticket_app/screens/search_screen.dart';
import 'package:ticket_app/screens/ticket_screen.dart';

class BottomBar extends StatefulWidget {
  const BottomBar({super.key});

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  int _selectedIndex = 3;
  static final List<Widget> _widgetOptions = <Widget>[
    const HomeScreen(),
    SearchScreen(),
    const TicketScreen(),
    const ProfileScreen(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        onTap: _onItemTapped,
        elevation: 10,
        currentIndex: _selectedIndex,
        showSelectedLabels: false,
        selectedItemColor: Colors.blueGrey,
        showUnselectedLabels: false,
        unselectedFontSize: 18,
        type: BottomNavigationBarType.fixed,
        unselectedItemColor: const Color(0xFF526480),
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            activeIcon: Icon(Icons.home_filled),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search_sharp),
            activeIcon: Icon(Icons.search),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.airplane_ticket_outlined),
            activeIcon: Icon(Icons.airplane_ticket_rounded),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outline_rounded),
            activeIcon: Icon(Icons.person_rounded),
            label: "Home",
          ),
        ],
      ),
      body: Center(
        child: _widgetOptions[_selectedIndex],
      ),
    );
  }
}
