import 'package:flutter/material.dart';
import 'package:newssnack/view/home.dart';

void main() {
  runApp(
   const MaterialApp(
    debugShowCheckedModeBanner: false,
      title: "Newsify",
      home: homepage(),
    ));
}

/*class newsnack extends StatelessWidget {
  const newsnack({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}*/