import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:qrproject/QR.dart';
import 'package:qrproject/registration.dart';
import 'package:http/http.dart' as http;
class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController rollno = TextEditingController();
  TextEditingController Password = TextEditingController();
  Future<void> login()async {
    Uri url =Uri.parse("https://scnner-web.onrender.com/api/login");
    var response = await http.post(url,
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
        },
        body: jsonEncode({
          'rollno': rollno.text,
          'password': Password.text,
        }));
var data =jsonDecode((response.body));
    if (response.statusCode == 200) {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const Qr()),
      );
      ScaffoldMessenger.of(context)
          .showSnackBar(SnackBar(content: Text(data["message"])));
    } else {
      ScaffoldMessenger.of(context)
          .showSnackBar(SnackBar(content: Text(data["message"])));
    }
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.brown,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(height:90,),
          Text('Login',

          style: TextStyle(
          fontSize: 35,
          color: Colors.white,
          fontWeight: FontWeight.w800,
      ),
          ),
    Padding(
            padding: const EdgeInsets.all(20.0),
            child: TextField(
              controller: rollno,
              decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors. white38,
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white),
                    borderRadius: BorderRadius.circular(50),
                  ),
                  hintText: 'Enter Your  Roll NO'),
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(20.0),
            child: TextField(
              controller:Password,
              decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors. white38,
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                      borderRadius: BorderRadius.circular(50)),
                  hintText: 'Enter Your Password'),
            ),
          ),
          SizedBox(
            height: 40,
          ),
          ElevatedButton(
            onPressed: () {
              login();
            },
            child: Text('Login',),
            style: ElevatedButton.styleFrom(  primary: Colors.white24,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          ),
          SizedBox(height: 30,),
          Text("Or",style: TextStyle(color: Colors.white, fontSize: 15,
            fontWeight: FontWeight.w800,)),
          SizedBox(height: 30,),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const  Registration()),
              );
            },
            child: Text(' Dont have an account? Register',),
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


