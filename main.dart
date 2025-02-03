import 'package:flutter/material.dart';
import 'package:math_expressions/math_expressions.dart';

void main() {
  runApp(calcolator());
}

class calcolator extends StatefulWidget {
  const calcolator({super.key});

  @override
  State<calcolator> createState() => _calcolatorState();
}

class _calcolatorState extends State<calcolator> {
  @override
  String res = " ";
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          title: Text(
            "Calculator",
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
          ),
          centerTitle: true,
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Container(
                alignment: Alignment.centerRight,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20)),
                child: Text(
                  res == " " ? 0.toString() : res,
                ),
                width: 400,
                height: 50,
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ElevatedButton(
                      onPressed: () {
                        setState(() {
                          res = " ";
                        });
                      },
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.grey),
                      child: Text(
                        "C",
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ElevatedButton(
                      onPressed: () {
                        if (res.length == 1) {
                          res = " ";
                        } else {
                          setState(() {
                            res = res.substring(0, res.length - 1);
                          });
                        }
                      },
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.grey),
                      child: Text(
                        "<-",
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ElevatedButton(
                      onPressed: () {
                        setState(() {
                          res += "%";
                        });
                      },
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.grey),
                      child: Text(
                        "%",
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ElevatedButton(
                      onPressed: () {
                        setState(() {
                          res += "/";
                        });
                      },
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.grey),
                      child: Text(
                        "/",
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ElevatedButton(
                      onPressed: () {
                        setState(() {
                          res += "7";
                        });
                      },
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white),
                      child: Text(
                        "7",
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ElevatedButton(
                      onPressed: () {
                        setState(() {
                          res += "8";
                        });
                      },
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white),
                      child: Text(
                        "8",
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ElevatedButton(
                      onPressed: () {
                        setState(() {
                          res += "9";
                        });
                      },
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white),
                      child: Text(
                        "9",
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ElevatedButton(
                      onPressed: () {
                        res += "*";
                      },
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white),
                      child: Text(
                        "*",
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ElevatedButton(
                      onPressed: () {
                        setState(() {
                          res += "4";
                        });
                      },
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white),
                      child: Text(
                        "4",
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ElevatedButton(
                      onPressed: () {
                        setState(() {
                          res += "5";
                        });
                      },
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white),
                      child: Text(
                        "5",
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ElevatedButton(
                      onPressed: () {
                        setState(() {
                          res += "6";
                        });
                      },
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white),
                      child: Text(
                        "6",
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ElevatedButton(
                      onPressed: () {
                        setState(() {
                          res += "-";
                        });
                      },
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white),
                      child: Text(
                        "-",
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ElevatedButton(
                      onPressed: () {
                        setState(() {
                          res += "1";
                        });
                      },
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white),
                      child: Text(
                        "1",
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ElevatedButton(
                      onPressed: () {
                        setState(() {
                          res += "2";
                        });
                      },
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white),
                      child: Text(
                        "2",
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ElevatedButton(
                      onPressed: () {
                        setState(() {
                          res += "3";
                        });
                      },
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white),
                      child: Text(
                        "3",
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ElevatedButton(
                      onPressed: () {
                        setState(() {
                          res += "+";
                        });
                      },
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white),
                      child: Text(
                        "+",
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ElevatedButton(
                      onPressed: () {
                        setState(() {
                          res += "0";
                        });
                      },
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white),
                      child: Text(
                        "0",
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ElevatedButton(
                      onPressed: () {
                        setState(() {
                          res += ".";
                        });
                      },
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white),
                      child: Text(
                        ".",
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SizedBox(
                      width: 150,
                      child: ElevatedButton(
                        onPressed: () {
                          res = res.replaceAll('X', '*');
                          Parser p = Parser();
                          Expression exp = p.parse(res);
                          String result = exp
                              .evaluate(
                                EvaluationType.REAL,
                                ContextModel(),
                              )
                              .toString();
                          setState(() {
                            res = result;
                          });
                        },
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.yellow),
                        child: Text(
                          "=",
                          style: TextStyle(color: Colors.black),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
