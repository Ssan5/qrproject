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
    Image.network(" https://img.lovepik.com/free_png/32/43/98/71R58PIC5gdn8V58PICFG58PICpSc_PIC2018.png_860.png",height:270,width:270, ),
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
