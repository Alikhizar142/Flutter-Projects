import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Myabl(),
    );
  }
}

class Myabl extends StatelessWidget {
  const Myabl({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
            child: Column(children: [
          Padding(
              padding: const EdgeInsets.only(top: 30, left: 0),
              child: Image.asset(
                'images/MY.png',
                height: 100,
                width: 300,
              )),
          Center(
            child: Container(
                height: 680,
                width: 390,
                decoration: BoxDecoration(
                  color: Colors.grey.shade100,
                  boxShadow: [BoxShadow(color: Colors.blueGrey.withOpacity(1))],
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Column(children: [
                  const SizedBox(
                    height: 30,
                  ),
                  Container(
                      width: 350,
                      height: 60,
                      decoration: const BoxDecoration(color: Colors.white),
                      child: TextFormField(
                        decoration: InputDecoration(
                            prefixIcon: Icon(
                              Icons.account_box_rounded,
                              color: Colors.orange.shade600,
                            ),
                            hintText: "Username",
                            border: OutlineInputBorder()),
                      )),
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                      width: 350,
                      height: 60,
                      decoration: const BoxDecoration(color: Colors.white),
                      child: TextFormField(
                        decoration: InputDecoration(
                            prefixIcon: Icon(
                              Icons.lock_outlined,
                              color: Colors.orange.shade600,
                            ),
                            hintText: "Password",
                            border: OutlineInputBorder(),
                            suffixIcon: Icon(
                              Icons.visibility_off,
                              color: Colors.orange.shade600,
                            )),
                      )),
                  const SizedBox(
                    height: 20,
                  ),
                  SizedBox(
                    height: 60,
                    width: 350,
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all<Color>(
                            Colors.orange.shade600),
                      ),
                      child: const Text(
                        "Sign In",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontFamily: 'Arial',
                            fontStyle: FontStyle.normal),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  SizedBox(
                    height: 60,
                    width: 350,
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white,
                          side: BorderSide(
                              color: Colors.blue.shade900, width: 2.0)),
                      child: Text(
                        "Register Now",
                        style: TextStyle(
                            color: Colors.blue.shade900,
                            fontSize: 20,
                            fontFamily: 'Arial',
                            fontStyle: FontStyle.normal),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Align(
                    alignment: Alignment.bottomLeft,
                    child: Padding(
                      padding: EdgeInsets.only(left: 20),
                      child: Text(
                        "Having trouble loggin in?",
                        style: TextStyle(
                            color: Colors.grey.shade600,
                            fontSize: 18,
                            decoration: TextDecoration.underline,
                            fontWeight: FontWeight.w400),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                    height: 80,
                    width: 80,
                    alignment: Alignment.center,
                    color: Colors.grey.shade200,
                    child: Icon(
                      Icons.fingerprint_rounded,
                      weight: 100,
                      color: Colors.orange.shade600,
                      size: 70,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                    height: 60,
                    width: 60,
                    alignment: Alignment.center,
                    decoration: const BoxDecoration(
                        shape: BoxShape.circle, color: Colors.white),
                    child: Image.asset(
                      'images/Whatsapp.jpg',
                      width: 40,
                      height: 40,
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 30),
                    child: Row(
                      children: [
                        Container(
                            height: 60,
                            width: 60,
                            alignment: Alignment.center,
                            decoration: const BoxDecoration(
                                shape: BoxShape.circle, color: Colors.white),
                            child: Image.asset(
                              'images/gif.png',
                              height: 30,
                              width: 30,
                            )),
                        const SizedBox(
                          width: 30,
                        ),
                        Container(
                          height: 60,
                          width: 60,
                          alignment: Alignment.center,
                          decoration: const BoxDecoration(
                              shape: BoxShape.circle, color: Colors.white),
                          child: Image.asset(
                            'images/user.png',
                            width: 30,
                            height: 30,
                          ),
                        ),
                        const SizedBox(
                          width: 30,
                        ),
                        Container(
                          height: 60,
                          width: 60,
                          alignment: Alignment.center,
                          decoration: const BoxDecoration(
                              shape: BoxShape.circle, color: Colors.white),
                          child: Image.asset(
                            'images/Roshan.png',
                            width: 30,
                            height: 30,
                          ),
                        ),
                        const SizedBox(
                          width: 30,
                        ),
                        Container(
                          height: 60,
                          width: 60,
                          alignment: Alignment.center,
                          decoration: const BoxDecoration(
                              shape: BoxShape.circle, color: Colors.white),
                          child: Image.asset(
                            'images/menu.png',
                            width: 30,
                            height: 30,
                          ),
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 30),
                    child: Row(
                      children: [
                        Container(
                          height: 60,
                          width: 60,
                          alignment: Alignment.center,
                          child: Align(
                            alignment: Alignment.topCenter,
                            child: Text("Offers",
                                style: TextStyle(
                                    color: Colors.orange.shade600,
                                    fontSize: 15)),
                          ),
                        ),
                        const SizedBox(
                          width: 40,
                        ),
                        Container(
                            height: 60,
                            width: 60,
                            alignment: Alignment.center,
                            child: Align(
                              alignment: Alignment.topCenter,
                              child: Text("Open Account",
                                  style: TextStyle(
                                      color: Colors.orange.shade600,
                                      fontSize: 15)),
                            )),
                        const SizedBox(
                          width: 30,
                        ),
                        Container(
                            height: 60,
                            width: 60,
                            alignment: Alignment.center,
                            child: Align(
                              alignment: Alignment.topCenter,
                              child: Text("Roshan Digital Account",
                                  style: TextStyle(
                                      color: Colors.orange.shade600,
                                      fontSize: 15)),
                            )),
                        const SizedBox(
                          width: 25,
                        ),
                        Container(
                            height: 60,
                            width: 60,
                            alignment: Alignment.center,
                            child: Align(
                              alignment: Alignment.topCenter,
                              child: Text(
                                "More",
                                style: TextStyle(
                                    color: Colors.orange.shade600,
                                    fontSize: 15),
                              ),
                            ))
                      ],
                    ),
                  )
                ])),
          ),
        ])),
      ),
    );
  }
}
