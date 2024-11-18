import 'package:flutter/material.dart';

class UserHome extends StatefulWidget {
  const UserHome({super.key});

  @override
  State<UserHome> createState() => _UserHomeState();
}

class _UserHomeState extends State<UserHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Judica"),
          backgroundColor: const Color.fromRGBO(255, 125, 41, 1),
        ),

    );
  }
}
