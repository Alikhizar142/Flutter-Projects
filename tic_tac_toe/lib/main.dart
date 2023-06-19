import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: tic_tac_toe(),
    );
  }
}

class tic_tac_toe extends StatefulWidget {
  const tic_tac_toe({super.key});

  @override
  State<tic_tac_toe> createState() => _tic_tac_toeState();
}

class _tic_tac_toeState extends State<tic_tac_toe> {
  int index0 = 0;
  int index1 = 0;
  int index2 = 0;
  int index3 = 0;
  int index4 = 0;
  int index5 = 0;
  int index6 = 0;
  int index7 = 0;
  int index8 = 0;
  int choice = 0;
  String winner = "";
  void check() async {
    bool pattren1 = index0 == 1 && index1 == 1 && index2 == 1;
    bool pattren2 = index3 == 1 && index4 == 1 && index5 == 1;
    bool pattren3 = index6 == 1 && index7 == 1 && index8 == 1;
    bool pattren4 = index0 == 1 && index3 == 1 && index6 == 1;
    bool pattren5 = index1 == 1 && index4 == 1 && index7 == 1;
    bool pattren6 = index2 == 1 && index5 == 1 && index8 == 1;
    bool pattren7 = index0 == 1 && index4 == 1 && index8 == 1;
    bool pattren8 = index2 == 1 && index4 == 1 && index6 == 1;

    bool pattren9 = index0 == 2 && index1 == 2 && index2 == 2;
    bool pattren10 = index3 == 2 && index4 == 2 && index5 == 2;
    bool pattren11 = index6 == 2 && index7 == 2 && index8 == 2;
    bool pattren12 = index0 == 2 && index3 == 2 && index6 == 2;
    bool pattren13 = index1 == 2 && index4 == 2 && index7 == 2;
    bool pattren14 = index2 == 2 && index5 == 2 && index8 == 2;
    bool pattren15 = index0 == 2 && index4 == 2 && index8 == 2;
    bool pattren16 = index2 == 2 && index4 == 2 && index6 == 2;

    if (pattren1 ||
        pattren2 ||
        pattren3 ||
        pattren4 ||
        pattren5 ||
        pattren6 ||
        pattren7 ||
        pattren8) {
      winner = "Player One is Winner";
      ScaffoldMessenger.of(context)
          .showSnackBar(SnackBar(content: Text(winner)));
      await Future.delayed(const Duration(seconds: 4));
      setState(() {
        index0 = 0;
        index1 = 0;
        index2 = 0;
        index3 = 0;
        index4 = 0;
        index5 = 0;
        index6 = 0;
        index7 = 0;
        index8 = 0;
        choice = 0;
      });
    } else if (pattren9 ||
        pattren10 ||
        pattren11 ||
        pattren12 ||
        pattren13 ||
        pattren14 ||
        pattren15 ||
        pattren16) {
      winner = "Player Two is winner";
      ScaffoldMessenger.of(context)
          .showSnackBar(SnackBar(content: Text(winner)));
      await Future.delayed(const Duration(seconds: 4));
      setState(() {
        index0 = 0;
        index1 = 0;
        index2 = 0;
        index3 = 0;
        index4 = 0;
        index5 = 0;
        index6 = 0;
        index7 = 0;
        index8 = 0;
        choice = 0;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Scaffold(
        body: SafeArea(
          child: Container(
            decoration: const BoxDecoration(
                gradient: LinearGradient(colors: [
              Colors.lightBlue,
              Colors.grey,
              Colors.purpleAccent,
              Colors.black
            ], begin: Alignment.topLeft, end: Alignment.bottomRight)),
            child: Column(children: [
              const SizedBox(
                height: 30,
              ),
              Container(
                  height: 100,
                  width: 250,
                  decoration: const BoxDecoration(
                      color: Colors.black,
                      backgroundBlendMode: BlendMode.lighten),
                  child: const Center(
                    child: Text("TIC TAC TOE ",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 40,
                            fontFamily: 'Times New Roman',
                            decoration: TextDecoration.underline,
                            decorationStyle: TextDecorationStyle.double)),
                  )),
              const SizedBox(
                height: 30,
              ),
              Expanded(
                  child: GridView(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3, mainAxisSpacing: 3, crossAxisSpacing: 3),
                children: [
                  GestureDetector(
                      onTap: () {
                        setState(() {
                          if (choice == 1) {
                            index0 = 1;
                            choice = 2;
                          } else if (choice == 2) {
                            index0 = 2;
                            choice = 1;
                          }
                          check();
                        });
                      },
                      child: index0 == 1
                          ? Container(
                              color: Colors.black,
                              child: Image.asset(
                                'images/X.png',
                                color: Colors.red,
                              ))
                          : index0 == 2
                              ? Container(
                                  color: Colors.black,
                                  child: Image.asset(
                                    'images/0.png',
                                    color: Colors.green,
                                  ),
                                )
                              : Container(
                                  color: Colors.black,
                                )),
                  GestureDetector(
                      onTap: () {
                        setState(() {
                          if (choice == 1) {
                            index1 = 1;
                            choice = 2;
                          } else if (choice == 2) {
                            index1 = 2;
                            choice = 1;
                          }
                          check();
                        });
                      },
                      child: index1 == 1
                          ? Container(
                              color: Colors.black,
                              child: Image.asset(
                                'images/X.png',
                                color: Colors.red,
                              ))
                          : index1 == 2
                              ? Container(
                                  color: Colors.black,
                                  child: Image.asset(
                                    'images/0.png',
                                    color: Colors.green,
                                  ),
                                )
                              : Container(
                                  color: Colors.black,
                                )),
                  GestureDetector(
                      onTap: () {
                        setState(() {
                          if (choice == 1) {
                            index2 = 1;
                            choice = 2;
                          } else if (choice == 2) {
                            index2 = 2;
                            choice = 1;
                          }
                          check();
                        });
                      },
                      child: index2 == 1
                          ? Container(
                              color: Colors.black,
                              child: Image.asset(
                                'images/X.png',
                                color: Colors.red,
                              ))
                          : index2 == 2
                              ? Container(
                                  color: Colors.black,
                                  child: Image.asset(
                                    'images/0.png',
                                    color: Colors.green,
                                  ),
                                )
                              : Container(
                                  color: Colors.black,
                                )),
                  GestureDetector(
                      onTap: () {
                        setState(() {
                          if (choice == 1) {
                            index3 = 1;
                            choice = 2;
                          } else if (choice == 2) {
                            index3 = 2;
                            choice = 1;
                          }
                          check();
                        });
                      },
                      child: index3 == 1
                          ? Container(
                              color: Colors.black,
                              child: Image.asset(
                                'images/X.png',
                                color: Colors.red,
                              ))
                          : index3 == 2
                              ? Container(
                                  color: Colors.black,
                                  child: Image.asset(
                                    'images/0.png',
                                    color: Colors.green,
                                  ),
                                )
                              : Container(
                                  color: Colors.black,
                                )),
                  GestureDetector(
                      onTap: () {
                        setState(() {
                          if (choice == 1) {
                            index4 = 1;
                            choice = 2;
                          } else if (choice == 2) {
                            index4 = 2;
                            choice = 1;
                          }
                          check();
                        });
                      },
                      child: index4 == 1
                          ? Container(
                              color: Colors.black,
                              child: Image.asset(
                                'images/X.png',
                                color: Colors.red,
                              ))
                          : index4 == 2
                              ? Container(
                                  color: Colors.black,
                                  child: Image.asset(
                                    'images/0.png',
                                    color: Colors.green,
                                  ),
                                )
                              : Container(
                                  color: Colors.black,
                                )),
                  GestureDetector(
                      onTap: () {
                        setState(() {
                          if (choice == 1) {
                            index5 = 1;
                            choice = 2;
                          } else if (choice == 2) {
                            index5 = 2;
                            choice = 1;
                          }
                          check();
                        });
                      },
                      child: index5 == 1
                          ? Container(
                              color: Colors.black,
                              child: Image.asset(
                                'images/X.png',
                                color: Colors.red,
                              ))
                          : index5 == 2
                              ? Container(
                                  color: Colors.black,
                                  child: Image.asset(
                                    'images/0.png',
                                    color: Colors.green,
                                  ),
                                )
                              : Container(
                                  color: Colors.black,
                                )),
                  GestureDetector(
                      onTap: () {
                        setState(() {
                          if (choice == 1) {
                            index6 = 1;
                            choice = 2;
                          } else if (choice == 2) {
                            index6 = 2;
                            choice = 1;
                          }
                          check();
                        });
                      },
                      child: index6 == 1
                          ? Container(
                              color: Colors.black,
                              child: Image.asset(
                                'images/X.png',
                                color: Colors.red,
                              ))
                          : index6 == 2
                              ? Container(
                                  color: Colors.black,
                                  child: Image.asset(
                                    'images/0.png',
                                    color: Colors.green,
                                  ),
                                )
                              : Container(
                                  color: Colors.black,
                                )),
                  GestureDetector(
                      onTap: () {
                        setState(() {
                          if (choice == 1) {
                            index7 = 1;
                            choice = 2;
                          } else if (choice == 2) {
                            index7 = 2;
                            choice = 1;
                          }
                          check();
                        });
                      },
                      child: index7 == 1
                          ? Container(
                              color: Colors.black,
                              child: Image.asset(
                                'images/X.png',
                                color: Colors.red,
                              ))
                          : index7 == 2
                              ? Container(
                                  color: Colors.black,
                                  child: Image.asset(
                                    'images/0.png',
                                    color: Colors.green,
                                  ),
                                )
                              : Container(
                                  color: Colors.black,
                                )),
                  GestureDetector(
                      onTap: () {
                        setState(() {
                          if (choice == 1) {
                            index8 = 1;
                            choice = 2;
                          } else if (choice == 2) {
                            index8 = 2;
                            choice = 1;
                          }
                          check();
                        });
                      },
                      child: index8 == 1
                          ? Container(
                              color: Colors.black,
                              child: Image.asset(
                                'images/X.png',
                                color: Colors.red,
                              ))
                          : index8 == 2
                              ? Container(
                                  color: Colors.black,
                                  child: Image.asset(
                                    'images/0.png',
                                    color: Colors.green,
                                  ),
                                )
                              : Container(
                                  color: Colors.black,
                                )),
                ],
              )),
              const SizedBox(
                height: 10,
              ),
              const Text(
                "Press  ''start'' to Start the Game",
                style: TextStyle(fontSize: 25, color: Colors.white70),
              ),
              choice == 0
                  ? ElevatedButton(
                      onPressed: () {
                        setState(() {
                          choice = 1;
                        });
                      },
                      child: const Text(
                        "Start",
                        style: TextStyle(
                          fontSize: 25,
                        ),
                      ))
                  : ElevatedButton(
                      onPressed: () {
                        setState(() {
                          choice = 1;
                          index0 = 0;
                          index1 = 0;
                          index2 = 0;
                          index3 = 0;
                          index4 = 0;
                          index5 = 0;
                          index6 = 0;
                          index7 = 0;
                          index8 = 0;
                        });
                      },
                      child: const Text(
                        "Reset",
                        style: TextStyle(fontSize: 25),
                      )),
            ]),
          ),
        ),
      ),
    );
  }
}
