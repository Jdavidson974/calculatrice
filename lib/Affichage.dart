import 'package:flutter/material.dart';
import 'package:flutter_application_2/globals.dart';

class Affichage extends StatefulWidget {
  Affichage({super.key});

  @override
  State<Affichage> createState() => _AffichageState();
}

class _AffichageState extends State<Affichage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Row(
          children: [
            Container(
              color: Colors.white,
              child: Row(children: [Text(saisieTampon)]),
            )
          ],
        ),
        Row(
          children: [
            Container(
              color: Colors.white,
              child: Row(
                children: [Text("Résultat :  $nb")],
              ),
            )
          ],
        )
      ],
    );
  }
}
