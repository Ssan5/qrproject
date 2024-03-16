import 'package:flutter/material.dart';
import 'package:mobile_scanner/mobile_scanner.dart';
import 'package:qr_flutter/qr_flutter.dart';
import 'package:qrproject/profile.dart';

class Img extends StatefulWidget {
  const Img({Key? key}) : super(key: key);

  @override
  State<Img> createState() => _ImgState();
}

class _ImgState extends State<Img> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.brown,
      body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
        children:[
          MobileScanner(
          allowDuplicates:false,
        onDetect:(barcode,arg){
            Navigator.push(context,MaterialPageRoute(builder: (context) => Pro()));
        }
        ),
      ],
      ),
    );
  }
}
