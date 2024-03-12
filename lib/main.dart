import 'package:flutter/material.dart';
import 'package:qrproject/signinn.dart';


void main() {
  runApp(QrApp());
}
class QrApp extends StatefulWidget {
  const QrApp({Key? key}) : super(key: key);

  @override
  State<QrApp> createState() => _QrAppState();
}

class _QrAppState extends State<QrApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Login(),
    );
  }
}
