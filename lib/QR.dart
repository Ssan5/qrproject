import 'package:flutter/material.dart';
class Qr extends StatefulWidget {
  const Qr({Key? key}) : super(key: key);

  @override
  State<Qr> createState() => _QrState();
}

class _QrState extends State<Qr> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        backgroundColor: Colors.teal,
        body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
        SizedBox(height:90,),
    ],

    );
  }
}
