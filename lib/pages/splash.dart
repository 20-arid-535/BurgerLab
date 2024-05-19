import 'package:flutter/material.dart';

import 'home.dart';

class Splash extends StatelessWidget {
  const Splash({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
         mainAxisAlignment: MainAxisAlignment.center,
         crossAxisAlignment: CrossAxisAlignment.center,
          children: 
        [
          SizedBox(height: 90,),
          Image.asset("assets/burger.png",width: 290,),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 50),
            child: Text("Try the best burger now!",textAlign: TextAlign.center,style: TextStyle(fontSize: 40,fontWeight: FontWeight.bold),)),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 50),
            margin: EdgeInsets.only(bottom: 10,top: 5),
            child: Text("Find different Flavour and enjoy them at ever movement",textAlign: TextAlign.center,style: TextStyle(fontSize: 15,),))
        ,GestureDetector(
          onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>Home()));
                 
          },
          child: Icon(Icons.arrow_circle_right,size: 60,color: Colors.grey.shade800,)),
        ],),
      ),
    );
  }
}