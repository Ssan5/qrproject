 import 'package:flutter/material.dart';
class Pro extends StatefulWidget {
  const Pro({Key? key}) : super(key: key);

  @override
  State<Pro> createState() => _ProState();
}

class _ProState extends State<Pro> {
  @override
  Widget build(BuildContext context) {
    return Scaffold( backgroundColor: Colors.white60,
    body: Center(
    child: Column(mainAxisAlignment: MainAxisAlignment.center,
    children: [
    Image.network("https://static.vecteezy.com/system/resources/previews/008/302/417/non_2x/eps10-brown-user-solid-icon-or-logo-in-simple-flat-trendy-modern-style-isolated-on-white-background-free-vector.jpg",height:270,width:270, ),
    SizedBox(height: 50,),
      Text("sania"),
      Text("flutter devloper",style: TextStyle(color: Colors.black45),),
      Card( child:ListTile(
        title: Text("835658"),
      ))

    ],
    ),
    ),
    );



  }
}
