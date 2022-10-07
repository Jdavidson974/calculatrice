import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Clavier extends StatefulWidget {
  const Clavier({super.key});

  @override
  State<Clavier> createState() => _ClavierState();
}

class _ClavierState extends State<Clavier> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue,
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
                onPressed: (() => {}),
                child: Text("7"),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.all(10),
            padding: EdgeInsets.all(5),
            decoration: BoxDecoration(
              border: Border.all(),
            ),
            child: Center(
              child: TextButton(
                onPressed: null,
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
                onPressed: null,
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
                onPressed: null,
                child: Text("+"),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
