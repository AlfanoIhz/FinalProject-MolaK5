import 'package:flutter/material.dart';
import 'package:myapp/main/bookings_page.dart';
import 'package:myapp/main/home_screens.dart';
import 'package:myapp/pages/notifikasi.dart';
import 'package:myapp/pages/profile.dart';

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
    const Notifikasi(),
    const Profile(),
    
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: NavigationBarTheme(
        data: NavigationBarThemeData(
          backgroundColor: const Color.fromARGB(255, 15, 24, 43),
          indicatorColor: Colors.white.withOpacity(0.1),
          labelTextStyle: WidgetStateProperty.resolveWith((states) {
            if (states.contains(WidgetState.selected)) {
              return const TextStyle(color: Colors.white);
            }
            return const TextStyle(color: Colors.grey);
          }),
          iconTheme: WidgetStateProperty.resolveWith((states) {
            if (states.contains(WidgetState.selected)) {
              return const IconThemeData(color: Colors.white);
            }
            return const IconThemeData(color: Colors.grey);
          }),
        ),
        child: NavigationBar(
          height: 60,
          elevation: 0,
          selectedIndex: _selectedIndex,
          onDestinationSelected: _onItemTapped,
          destinations: const [
            NavigationDestination(icon: Icon(Icons.home_outlined), label: "Home"),
            NavigationDestination(icon: Icon(Icons.list_outlined), label: "Bookings"),
            NavigationDestination(icon: Icon(Icons.notifications_outlined), label: "Notification"),
            NavigationDestination(icon: Icon(Icons.person), label: "Profile"),
          ],
        ),
      ),
      body: _pages[_selectedIndex],
    );
  }
}
