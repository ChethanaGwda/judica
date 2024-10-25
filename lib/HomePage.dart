import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import 'login.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromRGBO(255, 191, 120, 1),
        appBar: AppBar(
          title: const Text("Judica"),
          backgroundColor: const Color.fromRGBO(255, 125, 41, 1),
        ),
        body: SingleChildScrollView(
          child: Center(
            child: Column(children: [
              Container(
                decoration: const BoxDecoration(
                  color: Color.fromRGBO(254, 255, 210, 1),
                ),
                child: Column(children: [
                  Lottie.asset('assets/1.json', width: 300, height: 300),
                  Padding(
                    padding: const EdgeInsets.only(right: 15, left: 15),
                    child: RichText(
                      text: const TextSpan(
                        children: <TextSpan>[
                          TextSpan(
                              text: 'Develop ',
                              style: TextStyle(
                                  fontWeight: FontWeight.w900,
                                  color: Colors.black,
                                  fontSize: 32)),
                          TextSpan(
                              text: 'Skills ',
                              style: TextStyle(
                                  fontWeight: FontWeight.w900,
                                  color: Color.fromRGBO(251, 146, 60, 1),
                                  fontSize: 35)),
                          TextSpan(
                              text: 'from the best source',
                              style: TextStyle(
                                  fontWeight: FontWeight.w900,
                                  color: Colors.black,
                                  fontSize: 32)),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      child: RichText(
                        text: const TextSpan(children: <TextSpan>[
                          TextSpan(
                              text:
                                  'We aim to inspire a love for learning by creating an environments where students can explore their interests, develop new skills, and reach their full potential. Join us on this exciting educational adventure and discover the joy of learning with EduCEC!',
                              style: TextStyle(
                                  letterSpacing: 1,
                                  height: 1.3,
                                  fontWeight: FontWeight.normal,
                                  color: Colors.black,
                                  fontSize: 15))
                        ]),
                      )),
                  const SizedBox(
                    height: 30,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25.0),
                    child: Container(
                      alignment: Alignment.centerLeft,
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context)=> const LoginPage()));

                        },
                        style: ElevatedButton.styleFrom(
                          side: const BorderSide(width: 1, color: Colors.black),
                          backgroundColor: const Color.fromRGBO(255, 125, 41, 1),
                          foregroundColor: Colors.black,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12), // <-- Radius
                          ),
                        ),
                        child: const Text('Join Now!'),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                ]),
              ),
              Column(children: [
                Container(
                  decoration: const BoxDecoration(
                    color: Color.fromRGBO(255, 238, 169, 1),
                  ),
                  child: Column(children: [
                    Lottie.asset('assets/2.json', width: 300, height: 300),
                    Padding(
                      padding: const EdgeInsets.only(right: 15, left: 15),
                      child: RichText(
                        text: const TextSpan(
                          children: <TextSpan>[
                            TextSpan(
                                text: 'Develop ',
                                style: TextStyle(
                                    fontWeight: FontWeight.w900,
                                    color: Colors.black,
                                    fontSize: 32)),
                            TextSpan(
                                text: 'Skills ',
                                style: TextStyle(
                                    fontWeight: FontWeight.w900,
                                    color: Color.fromRGBO(251, 146, 60, 1),
                                    fontSize: 35)),
                            TextSpan(
                                text: 'from the best source',
                                style: TextStyle(
                                    fontWeight: FontWeight.w900,
                                    color: Colors.black,
                                    fontSize: 32)),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 15),
                        child: RichText(
                          text: const TextSpan(children: <TextSpan>[
                            TextSpan(
                                text:
                                    'We aim to inspire a love for learning by creating an environments where students can explore their interests, develop new skills, and reach their full potential. Join us on this exciting educational adventure and discover the joy of learning with EduCEC!',
                                style: TextStyle(
                                    letterSpacing: 1,
                                    height: 1.3,
                                    fontWeight: FontWeight.normal,
                                    color: Colors.black,
                                    fontSize: 15))
                          ]),
                        )),
                    const SizedBox(
                      height: 30,
                    ),Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 25.0),
                      child: Container(
                        alignment: Alignment.centerLeft,
                        child: ElevatedButton(
                          onPressed: () {
                            //Navigator.push(context, MaterialPageRoute(builder: (context)=> const LoginPage()));

                          },
                          style: ElevatedButton.styleFrom(
                            side: const BorderSide(width: 1, color: Colors.black),
                            backgroundColor: const Color.fromRGBO(255, 125, 41, 1),
                            foregroundColor: Colors.black,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12), // <-- Radius
                            ),
                          ),
                          child: const Text('Join Now!'),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                  ]),
                ),
              ]),
              Column(children: [
                Container(
                  decoration: const BoxDecoration(
                    color: Color.fromRGBO(255, 191, 120, 1),
                  ),
                  child: Column(children: [
                    Lottie.asset('assets/3.json', width: 300, height: 300),
                    Padding(
                      padding: const EdgeInsets.only(right: 15, left: 15),
                      child: RichText(
                        text: const TextSpan(
                          children: <TextSpan>[
                            TextSpan(
                                text: 'Develop ',
                                style: TextStyle(
                                    fontWeight: FontWeight.w900,
                                    color: Colors.black,
                                    fontSize: 32)),
                            TextSpan(
                                text: 'Skills ',
                                style: TextStyle(
                                    fontWeight: FontWeight.w900,
                                    color: Color.fromRGBO(251, 146, 60, 1),
                                    fontSize: 35)),
                            TextSpan(
                                text: 'from the best source',
                                style: TextStyle(
                                    fontWeight: FontWeight.w900,
                                    color: Colors.black,
                                    fontSize: 32)),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 15),
                        child: RichText(
                          text: const TextSpan(children: <TextSpan>[
                            TextSpan(
                                text:
                                'We aim to inspire a love for learning by creating an environments where students can explore their interests, develop new skills, and reach their full potential. Join us on this exciting educational adventure and discover the joy of learning with EduCEC!',
                                style: TextStyle(
                                    letterSpacing: 1,
                                    height: 1.3,
                                    fontWeight: FontWeight.normal,
                                    color: Colors.black,
                                    fontSize: 15))
                          ]),
                        )),
                    const SizedBox(
                      height: 30,
                    ),Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 25.0),
                      child: Container(
                        alignment: Alignment.centerLeft,
                        child: ElevatedButton(
                          onPressed: () {
                            //Navigator.push(context, MaterialPageRoute(builder: (context)=> const LoginPage()));

                          },
                          style: ElevatedButton.styleFrom(
                            side: const BorderSide(width: 1, color: Colors.black),
                            backgroundColor: const Color.fromRGBO(255, 125, 41, 1),
                            foregroundColor: Colors.black,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12), // <-- Radius
                            ),
                          ),
                          child: const Text('Join Now!'),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                  ]),
                ),
              ]),
            ]),
          ),
        ));
  }
}
