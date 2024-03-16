import 'package:flutter/material.dart';
import 'package:qrproject/profile.dart';
class Roll extends StatefulWidget {
  const Roll({Key? key}) : super(key: key);

  @override
  State<Roll> createState() => _RollState();
}

class _RollState extends State<Roll> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        backgroundColor: Colors.brown,
        body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
        SizedBox(height:90,),

    Padding(
    padding: const EdgeInsets.all(20.0),
    child: TextField(
    decoration: InputDecoration(
    filled: true,
    fillColor: Colors. white38,
    enabledBorder: OutlineInputBorder(
    borderSide: BorderSide(color: Colors.white),
    borderRadius: BorderRadius.circular(50),
    ),
    hintText: 'Enter Your Roll number'),

    ),
    ),
      ElevatedButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const  Pro()),
          );
        },
        child: Text('Done',),
        style: ElevatedButton.styleFrom(  primary: Colors.white24,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
      ),
    ),
      ],
    ),
    );
  }
}
