import 'package:flutter/material.dart';

import 'layout/layout.dart';
import 'pages/accueil/Calculatrice.dart';
import 'globals.dart';

void main() {
  print(nb);
  runApp(Layout(
    titre: "Super Calculatrice",
    body: Calculatrice(),
  ));
}
