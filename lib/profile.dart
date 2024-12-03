import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});
  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      backgroundColor: const Color.fromRGBO(250, 249, 246, 1),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              SizedBox(
                height: 50,
              ),
              CircleAvatar(
                radius: 80,
                backgroundColor: Colors.red,
                child: Padding(
                  padding: const EdgeInsets.all(8), // Border radius
                  child: ClipOval(child: Image.asset('assets/User.png')),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Text(
                "Anirudha Udupa",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              SizedBox(
                height: 30,
              ),
              Column(
                children: [
                  Container(
                    width: 500,
                    margin: const EdgeInsets.all(10.0),
                    padding: const EdgeInsets.all(10.0),
                    decoration: BoxDecoration(
                      border: Border.all(width: 2),
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(12),
                          bottomRight: Radius.circular(12)),
                    ), //             <--- BoxDecoration here
                    child: Text(
                      "text",
                      style: TextStyle(fontSize: 15.0),
                    ),
                  ),SizedBox(height: 10,),
                  Container(
                    width: 500,
                    margin: const EdgeInsets.all(10.0),
                    padding: const EdgeInsets.all(10.0),
                    decoration: BoxDecoration(
                      border: Border.all(width: 2),
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(12),
                          bottomRight: Radius.circular(12)),
                    ), //             <--- BoxDecoration here
                    child: Text(
                      "text",
                      style: TextStyle(fontSize: 15.0),
                    ),
                  ),SizedBox(height: 10,),
                  Container(
                    width: 500,
                    margin: const EdgeInsets.all(10.0),
                    padding: const EdgeInsets.all(10.0),
                    decoration: BoxDecoration(
                      border: Border.all(width: 2),
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(12),
                          bottomRight: Radius.circular(12)),
                    ), //             <--- BoxDecoration here
                    child: Text(
                      "text",
                      style: TextStyle(fontSize: 15.0),
                    ),
                  ),SizedBox(height: 10,),
                  Container(
                    width: 500,
                    margin: const EdgeInsets.all(10.0),
                    padding: const EdgeInsets.all(10.0),
                    decoration: BoxDecoration(
                      border: Border.all(width: 2),
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(12),
                          bottomRight: Radius.circular(12)),
                    ), //             <--- BoxDecoration here
                    child: Text(
                      "text",
                      style: TextStyle(fontSize: 15.0),
                    ),
                  ),SizedBox(height: 10,),
                  Container(alignment: Alignment.bottomRight,padding: EdgeInsetsDirectional.only(end: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [ElevatedButton(
                        onPressed: (){},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color.fromRGBO(255, 125, 41, 1),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12)),
                        ),
                        child:Text('Register'),
                      ),SizedBox(width: 10,),
                        ElevatedButton(
                          onPressed: (){},
                          style: ElevatedButton.styleFrom(
                            backgroundColor: const Color.fromRGBO(255, 125, 41, 1),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(12)),
                          ),
                          child:Text('Register'),
                        ),
                      ],
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
