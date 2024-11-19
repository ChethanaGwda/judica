import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:judica/profile.dart';

import 'FIRpage.dart';

class UserHome extends StatefulWidget {
  const UserHome({super.key});

  @override
  State<UserHome> createState() => _UserHomeState();
}

class _UserHomeState extends State<UserHome> {
  int _selectedIndex = 0; // Tracks the selected tab

  // Define the pages for navigation
  static final List<Widget> _pages = <Widget>[
    UserHome(),
    FirComponent(),
    ProfilePage()
  ];

  // Function to handle tab selection
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  // Logout function
  void _logout() {
    FirebaseAuth.instance.signOut();// Navigate to the login page
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Judica"),
        backgroundColor: const Color.fromRGBO(255, 125, 41, 1),
        actions: [
          IconButton(
            onPressed: _logout,
            icon: const Icon(Icons.logout),
          ),
        ],
      ),
      body: _pages[_selectedIndex], // Display the selected page
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',

          ),
        ],
        currentIndex: _selectedIndex, // Highlight the selected tab
        selectedItemColor: Colors.orange, // Selected icon color
        onTap: _onItemTapped, // Handle tab selection
      ),
    );
  }
}
