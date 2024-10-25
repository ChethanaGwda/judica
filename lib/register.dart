import 'package:flutter/material.dart';

import 'login.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Theme.of(context).colorScheme.surface,
      body: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset('assets/backgroung.jpg',fit: BoxFit.cover,),
          SingleChildScrollView(
            padding: const EdgeInsets.only(top: 60.0, left: 10, right: 10),
            child: Column(
              children: [
                Container(width: 150,height: 150,decoration: BoxDecoration( color:Color.fromRGBO(255, 238, 169,1),shape: BoxShape.circle),child: Icon(Icons.person,size: 100,)),
                const SizedBox(
                  height: 10,
                ),
                Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const SizedBox(height: 25),
                        // App name
                        // Email TextField
                        const Padding(
                          padding: EdgeInsets.only(left: 8.0, right: 8.0),
                          child:
                              TextField(
                                decoration: InputDecoration(
                                  suffixIcon: Icon(Icons.person_2_outlined,),
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
                              ),focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.black),
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
                        ),const SizedBox(height: 25),
                        // Password TextField
                        const Padding(
                          padding: EdgeInsets.only(left: 8.0, right: 8.0),
                          child: TextField(
                            decoration: InputDecoration(
                              suffixIcon: Icon(Icons.lock_outline),
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.black),
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(12),
                                    bottomRight: Radius.circular(12)),
                              ),focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.black),
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
                        const SizedBox(height: 5),
                        // Forgot Password

                        const SizedBox(height: 5),
                        // Sign In Button

                        const Padding(
                          padding: EdgeInsets.symmetric(horizontal: 10.0),
                          child: Text(
                            'Or continue with',
                            style:
                            TextStyle(color: Color.fromRGBO(57, 52, 52, 1)),
                          ),
                        ),
                        SizedBox(height: 10,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            GestureDetector(
                              onTap: () {},
                              child:
                              Image.asset('assets/google.png', width: 50),
                            ),
                            const SizedBox(width: 25),
                            GestureDetector(
                              onTap: () {
                                // Implement Apple sign-in logic here
                              },
                              child:
                              Image.asset('assets/apple.png', width: 50),
                            ),
                          ],
                        ),SizedBox(height: 10,),
                        // Don't have an account? Register here
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text("Already have an account? "),
                            GestureDetector(
                              onTap: () {Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const LoginPage()));},
                              child: const Text(
                                "Sign In",
                                style: TextStyle(
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
                              const Color.fromRGBO(251,146,60, 1),
                              foregroundColor: Colors.black,
                              shape: RoundedRectangleBorder(
                                borderRadius:
                                BorderRadius.circular(12), // <-- Radius
                              ),
                            ),
                            child: const Text(
                              'Create Account →',
                              style: TextStyle(fontSize: 15,color: Colors.white),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        )
                      ]),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
