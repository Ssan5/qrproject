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
      Text("Sania",style: TextStyle(
        fontSize: 40,color: Colors.brown,  fontWeight: FontWeight.w800,
      ),),
      Text("flutter devloper",style: TextStyle(color: Colors.black26,fontSize: 30,  fontWeight: FontWeight.w800,),),
      Card( child:ListTile(
        leading: Icon(Icons.phone,color: Colors.brown,),
        title: Text("+91 900835658"),
      )),
      Card( child:ListTile(
        leading: Icon(Icons.email,color: Colors.brown,),
        title: Text("dsgsgd@gmail.com"),
      )),

    ],
    ),
    ),
    );



  }
}
