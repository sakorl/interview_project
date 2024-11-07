import 'package:flutter/material.dart';
import 'package:interview_project/home_screen.dart';
import 'package:interview_project/notification.dart';
import 'package:interview_project/report.dart';

class BottomNavBarScreen extends StatefulWidget {
  const BottomNavBarScreen({super.key});

  @override
  State<BottomNavBarScreen> createState() => _BottomNavBarScreenState();
}

class _BottomNavBarScreenState extends State<BottomNavBarScreen> {
  int _selectedIndex = 0; // Current selected tab index

  // List of pages corresponding to each tab
  final List<Widget> _pages = [
    const HomeScreen(),
    const NotificationsScreen(),
    const ReportsScreen(),
  ];

  // On tapping the navigation bar items
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index; // Update the selected index
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedIndex], // Show the selected page
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex, // Current selected index
        onTap: _onItemTapped, // Tap event handler
        selectedItemColor:
            Colors.yellow[700], // Color of the selected icon and text
        unselectedItemColor: Colors.grey, // Color of unselected icons and text
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.menu),
            label: 'មុខងារ', // "ផ្ទះ" in Khmer
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications),
            label: 'សារដំណឹង', // "សារដំណឹង"
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.bar_chart),
            label: 'ក្ដារព័ត៌មាន', // "ផ្លិតហិរញ្ញវត្ថុ"
          ),
        ],
      ),
    );
  }
}
