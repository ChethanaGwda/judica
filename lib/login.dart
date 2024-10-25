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
            padding: const EdgeInsets.only(top: 80.0, left: 10, right: 10),
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
                          child: TextField(
                            decoration: InputDecoration(filled: true,
                              fillColor:Color.fromRGBO(255, 238, 169,1),
                              hintText: 'Email',
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
                              filled: true,
                              fillColor:Color.fromRGBO(255, 238, 169,1),
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.black),
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(12),
                                    bottomRight: Radius.circular(12)),
                              ), focusedBorder: OutlineInputBorder(
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
                            const Text("Don't have an account? "),
                            GestureDetector(
                              onTap: () {Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (
                                          context) => const RegisterPage()));},
                              child: const Text(
                                "Register here",
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

