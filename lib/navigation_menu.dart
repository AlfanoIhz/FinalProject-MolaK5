import 'package:flutter/material.dart';
import 'package:myapp/main/bookings_page.dart';
import 'package:myapp/main/home.dart';

class NavigationMenu extends StatefulWidget {
  const NavigationMenu({super.key});

  @override
  _NavigationMenuState createState() => _NavigationMenuState();
}

class _NavigationMenuState extends State<NavigationMenu> {
  int _selectedIndex = 0;

  final List<Widget> _pages = [
    const HomeScreen(),
    const BookingsPage(),
    Container(color: Colors.yellow),
    Container(color: Colors.green),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: NavigationBar(
        height: 80,
        elevation: 0,
        selectedIndex: _selectedIndex,
        onDestinationSelected: _onItemTapped,
        backgroundColor: const Color.fromARGB(0, 24, 32, 46),
        destinations: const [
          NavigationDestination(icon: Icon(Icons.home_outlined), label: "Home"),
          NavigationDestination(icon: Icon(Icons.list_outlined), label: "Bookings"),
          NavigationDestination(icon: Icon(Icons.notifications_outlined), label: "Notification"),
          NavigationDestination(icon: Icon(Icons.message_outlined), label: "Inbox"),
        ],
      ),
      body: _pages[_selectedIndex],
    );
  }
}
