import 'dart:ui';

import 'package:flutter/material.dart';

import 'login.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  String? selectedOption;
  List<String> options = ['Advocate', 'Police', 'Citizen','Judges'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Theme.of(context).colorScheme.surface,
      body: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset(
            'assets/Background.jpg',
            fit: BoxFit.cover,
          ),
          SingleChildScrollView(
            padding: const EdgeInsets.only(top: 60.0, left: 10, right: 10),
            child: Column(
              children: [
                Container(
                    width: 150,
                    height: 150,
                    decoration: const BoxDecoration(
                        color: Color.fromRGBO(255, 238, 169, 1),
                        shape: BoxShape.circle),
                    child: const Icon(
                      Icons.person,
                      size: 100,
                    )),
                const SizedBox(
                  height: 10,
                ),
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
                  const SizedBox(height: 25),
                  // App name
                  // Email TextField
                  const Padding(
                    padding: EdgeInsets.only(left: 8.0, right: 8.0),
                    child: TextField(
                      decoration: InputDecoration(
                        suffixIcon: Icon(
                          Icons.person_2_outlined,
                        ),
                        hintText: 'Username',
                        hintStyle: TextStyle(
                            fontSize: 15.0,
                            color: Colors.black,
                            fontWeight: FontWeight.normal),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.black),
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(12),
                              bottomRight: Radius.circular(12)),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.black),
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(12),
                              bottomRight: Radius.circular(12)),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 25),
                  // Password TextField
                  const Padding(
                    padding: EdgeInsets.only(left: 8.0, right: 8.0),
                    child: TextField(
                      decoration: InputDecoration(
                        suffixIcon: Icon(Icons.email_outlined),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.black),
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(12),
                              bottomRight: Radius.circular(12)),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.black),
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(12),
                              bottomRight: Radius.circular(12)),
                        ),
                        hintText: 'Email',
                        hintStyle: TextStyle(
                            fontSize: 15.0,
                            color: Colors.black,
                            fontWeight: FontWeight.normal),
                      ),
                    ),
                  ),
                  const SizedBox(height: 25),
                  // Password TextField
                  const Padding(
                    padding: EdgeInsets.only(left: 8.0, right: 8.0),
                    child: TextField(
                      decoration: InputDecoration(
                        suffixIcon: Icon(Icons.remove_red_eye),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.black),
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(12),
                              bottomRight: Radius.circular(12)),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.black),
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(12),
                              bottomRight: Radius.circular(12)),
                        ),
                        hintText: 'Confirm password',
                        hintStyle: TextStyle(
                            fontSize: 15.0,
                            color: Colors.black,
                            fontWeight: FontWeight.normal),
                      ),
                    ),
                  ),
                  const SizedBox(height: 25),
                  // Password TextField
                  const Padding(
                    padding: EdgeInsets.only(left: 8.0, right: 8.0),
                    child: TextField(
                      decoration: InputDecoration(
                        suffixIcon: Icon(Icons.remove_red_eye),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.black),
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(12),
                              bottomRight: Radius.circular(12)),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.black),
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(12),
                              bottomRight: Radius.circular(12)),
                        ),
                        hintText: 'password',
                        hintStyle: TextStyle(
                            fontSize: 15.0,
                            color: Colors.black,
                            fontWeight: FontWeight.normal),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0, right: 8.0),
                    child: DropdownButtonFormField<String>(
                      decoration: const InputDecoration(
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.black),
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(12),
                            bottomRight: Radius.circular(12),
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.black),
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(12),
                            bottomRight: Radius.circular(12),
                          ),
                        ),
                      ),
                      hint: const Text(
                        'Select an option',
                        style: TextStyle(
                          fontSize: 15.0,
                          color: Colors.black,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                      value: selectedOption,
                      items: options.map((String option) {
                        return DropdownMenuItem<String>(
                          value: option,
                          child: Text(option),
                        );
                      }).toList(),
                      onChanged: (String? newValue) {
                        setState(() {
                          selectedOption = newValue;
                        });
                      },
                      icon: const Icon(Icons.arrow_drop_down,
                          color: Colors.black),
                      style: const TextStyle(
                        color: Colors.black,
                        fontSize: 15.0,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                  ),

                  const SizedBox(
                    height: 20,
                  ),
                  SizedBox(
                    width: 200,
                    height: 50,
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        side: const BorderSide(width: 1, color: Colors.black),
                        backgroundColor: const Color.fromRGBO(251, 146, 60, 1),
                        foregroundColor: Colors.black,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12), // <-- Radius
                        ),
                      ),
                      child: const Text(
                        'Create Account →',
                        style: TextStyle(fontSize: 15, color: Colors.white),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text("Already have an account? "),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const LoginPage()));
                        },
                        child: const Text(
                          "Sign In",
                          style: TextStyle(decoration:TextDecoration.underline,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      const SizedBox(height: 25),
                      // Don't have an account? Register here
                    ],
                  ),
                ]),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
