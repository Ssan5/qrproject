import 'package:flutter/material.dart';
import 'package:qrproject/registration.dart';
class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
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
              decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors. white38,
                  border: OutlineInputBorder(
                    borderSide: const BorderSide(color: Colors.white),
                    borderRadius: BorderRadius.circular(50),
                  ),
                  hintText: 'Enter Your Email ID'),
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(20.0),
            child: TextField(
              decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors. white38,
                  border: OutlineInputBorder(
                      borderSide: const BorderSide(color: Colors.white),
                      borderRadius: BorderRadius.circular(50)),
                  hintText: 'Enter Your Password'),
            ),
          ),
          SizedBox(
            height: 40,
          ),
          ElevatedButton(
            onPressed: () {

            },
            child: Text('Login',),
            style: ElevatedButton.styleFrom(  primary: Colors.white24,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          ),
          SizedBox(height: 50,),
          Row(

            mainAxisAlignment: MainAxisAlignment.center,
            children: [

              Text(' Dont have an account?  ',

                style: TextStyle(
                  fontSize: 12,
                  color: Colors.white,
                  fontWeight: FontWeight.w800,
                ),
              ),
              TextButton(onPressed:(){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const  Registration()),
                );
              },
                  child: Text("Register", style: TextStyle(
                    fontSize: 12,
                    color: Colors.white,
                    fontWeight: FontWeight.w800,
                  ),),)
            ],
          ),


        ],
      ),
    );
  }
}


