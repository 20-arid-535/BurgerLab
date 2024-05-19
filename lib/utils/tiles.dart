import 'package:cookies_ui/pages/burgerdetail.dart';
import 'package:flutter/material.dart';

class tiles extends StatelessWidget {
  
final String link2;
   tiles({super.key,required this.link2});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
       onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>Detail()));
                        },
      child: Padding(
                  padding: const EdgeInsets.only(left: 8),
                  child: Container(
                    padding: EdgeInsets.all(8),
                    width: 200,
                    height: 100,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: Colors.black54
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 18),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(12),
                            child: Image.asset(link2, width: 180,height: 150,)),
                        ),
                        SizedBox(height: 10,),
      
                        Padding(
                          padding: const EdgeInsets.only(top: 8,left: 8),
                          child: Text("Burger",style: TextStyle(fontSize: 19),),
                        ),
                         Padding(
                          padding: const EdgeInsets.only(left: 8,bottom: 8),
                          child: Text("with extra cheese",style: TextStyle(fontSize: 14,color: Colors.green[300]),),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                          Padding(
                          padding: const EdgeInsets.only(left: 8),
                          child: Text("\$100.0",style: TextStyle(fontSize: 19,color: Colors.orange),),
                          
                        ),
                        Container(
                          color: Colors.orange,
                          child: Icon(Icons.add),
                        ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
    );
  }
}