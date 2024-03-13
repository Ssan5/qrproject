import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';
class Qr extends StatefulWidget {
  const Qr({Key? key}) : super(key: key);

  @override
  State<Qr> createState() => _QrState();
}
class _QrState extends State<Qr> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        backgroundColor: Colors.white60,
         body: Center(
           child: Column(mainAxisAlignment: MainAxisAlignment.center,
             children: [
               Image.network("https://static.vecteezy.com/system/resources/previews/008/302/417/non_2x/eps10-brown-user-solid-icon-or-logo-in-simple-flat-trendy-modern-style-isolated-on-white-background-free-vector.jpg",height:270,width:270, ),
               SizedBox(height: 40,),
               QrImage(
                 data: '1234567890',
                 version: QrVersions.auto,
                 size: 200.0,
               ),
               SizedBox(height: 50,),
               ElevatedButton(
                 onPressed: () {

                 },
                 child: Text('Scan',),
                 style: ElevatedButton.styleFrom(  primary: Colors.brown,
                   shape: RoundedRectangleBorder(
                     borderRadius: BorderRadius.circular(10),
                   ),
                 ),
               ),

             ],
           ),
         ),
      );



  }
}
