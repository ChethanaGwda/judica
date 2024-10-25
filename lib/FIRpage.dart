import 'package:flutter/material.dart';

class FIRpage extends StatefulWidget {
  const FIRpage({super.key});

  @override
  State<FIRpage> createState() => _FIRpageState();
}

class _FIRpageState extends State<FIRpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("FIRpage"),
      ),
    );
  }
}
