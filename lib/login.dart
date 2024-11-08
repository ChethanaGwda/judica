
import 'package:flutter/material.dart';
import 'package:judica/register.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Theme
          .of(context)
          .colorScheme
          .surface,
      body: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset('assets/Background.jpg',fit: BoxFit.cover,),
          SingleChildScrollView(
            padding: const EdgeInsets.only(top: 150.0, left: 10, right: 10),
            child: Column(
              children: [
               Container(width: 150,height: 150,decoration: const BoxDecoration( color:Color.fromRGBO(255, 238, 169,1),shape: BoxShape.circle),child: const Icon(Icons.person,size: 100,)),
                const SizedBox(
                  height: 10,
                ),
                Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const SizedBox(height: 55),
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
                              suffixIcon: Icon(Icons.lock_open),
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
                              hintText: 'Password',
                              hintStyle: TextStyle(
                                  fontSize: 15.0,
                                  color: Colors.black,
                                  fontWeight: FontWeight.normal),
                            ),
                          ),
                        ),
                        const SizedBox(height: 5),
                        // Forgot Password
                        GestureDetector(
                          onTap: () {
                            // Implement forgot password functionality
                          },
                          child: const Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Padding(
                                padding: EdgeInsets.only(right: 15.0),
                                child: Text(
                                  "Forgot Password?",
                                  style: TextStyle(
                                    color: Colors.black,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(height: 5),
                        // Sign In Button
const SizedBox(height: 10,),
                        // Don't have an account? Register here

                        SizedBox(
                          width: 200,
                          height: 50,
                          child: ElevatedButton(
                            onPressed: () {

                            },
                            style: ElevatedButton.styleFrom(
                              side: const BorderSide(
                                  width: 1, color: Colors.black),
                              backgroundColor:
                              const Color.fromRGBO(251, 146, 60, 1),
                              foregroundColor: Colors.black,
                              shape: RoundedRectangleBorder(
                                borderRadius:
                                BorderRadius.circular(12), // <-- Radius
                              ),
                            ),
                            child: const Text(
                              'Log In →',
                              style: TextStyle(
                                  fontSize: 20, color: Colors.white),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ), Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text("Don't have an account? "),
                            GestureDetector(
                              onTap: () {Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (
                                          context) => const RegisterPage()));},
                              child: const Text(
                                "Register here",
                                style: TextStyle(decoration: TextDecoration.underline,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            const SizedBox(height: 25),
                            // Don't have an account? Register here
                          ],
                        ),
                        const SizedBox(
                          height: 10,
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

