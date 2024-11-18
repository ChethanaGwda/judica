import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class UserHome extends StatefulWidget {
  const UserHome({super.key});

  @override
  State<UserHome> createState() => _UserHomeState();
}
void logout() {
  FirebaseAuth.instance.signOut();
}

class _UserHomeState extends State<UserHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Judica"),
          backgroundColor: const Color.fromRGBO(255, 125, 41, 1),
          actions: [
            IconButton(
              onPressed: logout,
              icon: Icon(Icons.logout),
            ),
          ],
        ),

    );
  }
}
