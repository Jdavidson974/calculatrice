import 'package:flutter/material.dart';

class Layout extends StatelessWidget {
  const Layout({super.key, required this.titre, required this.body});
  final String titre;
  final Widget body;

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Center(child: Text(titre)),
        ),
        // drawer ici
        body: body,
      ),
    );
  }
}
