import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_application_2/Affichage.dart';
import 'package:flutter_application_2/Clavier.dart';
import 'package:flutter_application_2/globals.dart';
import 'package:dart_eval/dart_eval.dart';

class Calculatrice extends StatefulWidget {
  const Calculatrice({super.key});

  @override
  State<Calculatrice> createState() => _CalculatriceState();
}

class _CalculatriceState extends State<Calculatrice> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          color: Colors.amber,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Expanded(
                flex: 1,
                child: Affichage(),
              ),
              Expanded(
                  flex: 1,
                  child: Row(
                    children: [
                      Column(
                        children: [
                          //0 Ligne des bouton
                          Container(
                            padding: EdgeInsets.all(5),
                            decoration: BoxDecoration(
                              border: Border.all(),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  padding: EdgeInsets.all(5),
                                  decoration: BoxDecoration(
                                    border: Border.all(),
                                  ),
                                  child: Center(
                                    child: TextButton(
                                      onPressed: (() {
                                        setState(() {
                                          saisie = "";
                                          saisieTampon = "";
                                        });
                                      }),
                                      child: Text("C"),
                                    ),
                                  ),
                                ),
                                Container(
                                  padding: EdgeInsets.all(5),
                                  decoration: BoxDecoration(
                                    border: Border.all(),
                                  ),
                                  child: Center(
                                    child: TextButton(
                                      onPressed: (() {
                                        setState(() {
                                          saisie = "";
                                          saisieTampon = "";

                                          nb = 0;
                                        });
                                      }),
                                      child: Text("CE"),
                                    ),
                                  ),
                                ),
                                Container(
                                  padding: EdgeInsets.all(5),
                                  decoration: BoxDecoration(
                                    border: Border.all(),
                                  ),
                                  child: Center(
                                    child: TextButton(
                                      onPressed: (() {
                                        setState(() {
                                          if (saisieTampon != "") {
                                            saisieTampon = saisieTampon + "/";
                                          }
                                        });
                                      }),
                                      child: Text("/"),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.all(5),
                            decoration: BoxDecoration(
                              border: Border.all(),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  padding: EdgeInsets.all(5),
                                  decoration: BoxDecoration(
                                    border: Border.all(),
                                  ),
                                  child: Center(
                                    child: TextButton(
                                      onPressed: (() {
                                        setState(() {
                                          saisieTampon = saisieTampon + "7";
                                          saisie = saisie + "7";
                                        });
                                      }),
                                      child: Text("7"),
                                    ),
                                  ),
                                ),
                                Container(
                                  padding: EdgeInsets.all(5),
                                  decoration: BoxDecoration(
                                    border: Border.all(),
                                  ),
                                  child: Center(
                                    child: TextButton(
                                      onPressed: (() {
                                        setState(() {
                                          saisieTampon = saisieTampon + "8";
                                          saisie = saisie + "8";
                                        });
                                      }),
                                      child: Text("8"),
                                    ),
                                  ),
                                ),
                                Container(
                                  padding: EdgeInsets.all(5),
                                  decoration: BoxDecoration(
                                    border: Border.all(),
                                  ),
                                  child: Center(
                                    child: TextButton(
                                      onPressed: (() {
                                        setState(() {
                                          saisieTampon = saisieTampon + "9";
                                          saisie = saisie + "9";
                                        });
                                      }),
                                      child: Text("9"),
                                    ),
                                  ),
                                ),
                                Container(
                                  padding: EdgeInsets.all(5),
                                  decoration: BoxDecoration(
                                    border: Border.all(),
                                  ),
                                  child: Center(
                                    child: TextButton(
                                      onPressed: (() => {
                                            setState(() {
                                              if (saisie != "") {
                                                saisieTampon =
                                                    saisieTampon + "+";
                                              }
                                              // additione();
                                            })
                                          }),
                                      child: Text("+"),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          // 2eme ligne
                          Container(
                            padding: EdgeInsets.all(5),
                            decoration: BoxDecoration(
                              border: Border.all(),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  padding: EdgeInsets.all(5),
                                  decoration: BoxDecoration(
                                    border: Border.all(),
                                  ),
                                  child: Center(
                                    child: TextButton(
                                      onPressed: (() {
                                        setState(() {
                                          saisieTampon = saisieTampon + "6";
                                          saisie = saisie + "6";
                                        });
                                      }),
                                      child: Text("6"),
                                    ),
                                  ),
                                ),
                                Container(
                                  padding: EdgeInsets.all(5),
                                  decoration: BoxDecoration(
                                    border: Border.all(),
                                  ),
                                  child: Center(
                                    child: TextButton(
                                      onPressed: (() {
                                        setState(() {
                                          saisieTampon = saisieTampon + "5";
                                          saisie = saisie + "5";
                                        });
                                      }),
                                      child: Text("5"),
                                    ),
                                  ),
                                ),
                                Container(
                                  padding: EdgeInsets.all(5),
                                  decoration: BoxDecoration(
                                    border: Border.all(),
                                  ),
                                  child: Center(
                                    child: TextButton(
                                      onPressed: (() {
                                        setState(() {
                                          saisieTampon = saisieTampon + "4";
                                          saisie = saisie + "4";
                                        });
                                      }),
                                      child: Text("4"),
                                    ),
                                  ),
                                ),
                                Container(
                                  padding: EdgeInsets.all(5),
                                  decoration: BoxDecoration(
                                    border: Border.all(),
                                  ),
                                  child: Center(
                                    child: TextButton(
                                      onPressed: (() {
                                        setState(() {
                                          if (saisieTampon != "") {
                                            saisieTampon = saisieTampon + "-";
                                          }
                                        });
                                      }),
                                      child: Text("-"),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ), //3eme Ligne des bouton
                          Container(
                            padding: EdgeInsets.all(5),
                            decoration: BoxDecoration(
                              border: Border.all(),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  padding: EdgeInsets.all(5),
                                  decoration: BoxDecoration(
                                    border: Border.all(),
                                  ),
                                  child: Center(
                                    child: TextButton(
                                      onPressed: (() {
                                        setState(() {
                                          saisieTampon = saisieTampon + "3";
                                          saisie = saisie + "3";
                                        });
                                      }),
                                      child: Text("3"),
                                    ),
                                  ),
                                ),
                                Container(
                                  padding: EdgeInsets.all(5),
                                  decoration: BoxDecoration(
                                    border: Border.all(),
                                  ),
                                  child: Center(
                                    child: TextButton(
                                      onPressed: (() {
                                        setState(() {
                                          saisieTampon = saisieTampon + "2";
                                          saisie = saisie + "2";
                                        });
                                      }),
                                      child: Text("2"),
                                    ),
                                  ),
                                ),
                                Container(
                                  padding: EdgeInsets.all(5),
                                  decoration: BoxDecoration(
                                    border: Border.all(),
                                  ),
                                  child: Center(
                                    child: TextButton(
                                      onPressed: (() {
                                        setState(() {
                                          saisieTampon = saisieTampon + "1";
                                          saisie = saisie + "1";
                                        });
                                      }),
                                      child: Text("1"),
                                    ),
                                  ),
                                ),
                                Container(
                                  padding: EdgeInsets.all(5),
                                  decoration: BoxDecoration(
                                    border: Border.all(),
                                  ),
                                  child: Center(
                                    child: TextButton(
                                      onPressed: (() {
                                        setState(() {
                                          if (saisieTampon != "") {
                                            saisieTampon = saisieTampon + "*";
                                          }
                                        });
                                      }),
                                      child: Text("*"),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ), //3eme Ligne des bouton
                          Container(
                            padding: EdgeInsets.all(5),
                            decoration: BoxDecoration(
                              border: Border.all(),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  padding: EdgeInsets.all(5),
                                  decoration: BoxDecoration(
                                    border: Border.all(),
                                  ),
                                  child: Center(
                                    child: TextButton(
                                      onPressed: (() {
                                        setState(() {
                                          saisieTampon = saisieTampon + "0";
                                          saisie = saisie + "0";
                                        });
                                      }),
                                      child: Text("0"),
                                    ),
                                  ),
                                ),
                                Container(
                                  padding: EdgeInsets.all(5),
                                  decoration: BoxDecoration(
                                    border: Border.all(),
                                  ),
                                  child: Center(
                                    child: TextButton(
                                      onPressed: (() {
                                        setState(() {
                                          if (!saisie.contains(".")) {
                                            saisieTampon = saisieTampon + ".";
                                            saisie = saisie + ".";
                                          }
                                        });
                                      }),
                                      child: Text(","),
                                    ),
                                  ),
                                ),
                                Container(
                                  padding: EdgeInsets.all(5),
                                  decoration: BoxDecoration(
                                    border: Border.all(),
                                  ),
                                  child: Center(
                                    child: TextButton(
                                      onPressed: (() => setState(() {
                                            if (saisieTampon != "") {
                                              nb = eval(saisieTampon);
                                            }
                                          })),
                                      child: Text("="),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  )),
            ],
          ),
        ),
      ],
    );
  }

  egalise() {}
}
