import 'package:flutter/material.dart';

class menu extends StatelessWidget {
   String? t;
  final String? img;
   final VoidCallback? tab;
   final bool isselected;
   menu({super.key,this.img,this.t,this.tab,required this.isselected});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: tab,
      child: Padding(padding: EdgeInsets.only(left: 45),
      child: CircleAvatar(
        backgroundColor: isselected?Colors.grey.shade800:Colors.transparent,
        radius: 28,
        child: Column(
          children: [
            SizedBox(height: 15,),
            Image.asset("${img}",width: 20,height: 20,color: isselected?Colors.orange:Colors.white,),
            Text("${t}",style: TextStyle(color: isselected?Colors.orange:Colors.white,
            fontSize: 13,fontWeight: FontWeight.bold),),
          ],
        ),
      ),),
    );
  }
}