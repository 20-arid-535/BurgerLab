import 'package:flutter/material.dart';

class Detail extends StatefulWidget {
  const Detail({super.key});

  @override
  State<Detail> createState() => _DetailState();
}

class _DetailState extends State<Detail> {
  int selecetindex=-1;
  int count=0;
  List choice=[false,false,false,false];
List imgs =["assets/tomato.png","assets/onions.png","assets/cheese.png","assets/meat.png"];
 List name =["tomato","onions","cheese","meat"];
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(elevation: 0, title: Text("Burger"),),
      body: Padding(
        padding: const EdgeInsets.only(left: 18,right: 18,top: 30),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 20),
              child: Row(
                children: [
                  Column(children: [
                             Image.asset("assets/top-bun1.png",width: 230,),
                             AnimatedOpacity(
                              opacity: choice[0]?1.0:0.0,
                              duration: Duration(milliseconds: 600),
                               child: choice[0]?
                                Image.asset("assets/tomato.png",width: 230):SizedBox(),
                             ),
                            AnimatedOpacity(
                              opacity: choice[1]?1.0:0.0,
                              duration: Duration(milliseconds: 600),
                              child: choice[1]? Image.asset("assets/onions.png",width: 230):SizedBox()),
                            AnimatedOpacity(
                              opacity: choice[2]?1.0:0.0,
                              duration: Duration(milliseconds: 600),
                              child: choice[2]?  Image.asset("assets/cheese.png",width: 230):SizedBox()),
                             AnimatedOpacity(
                              opacity: choice[3]?1.0:0.0,
                              duration: Duration(milliseconds: 600),
                              child: choice[3]?Image.asset("assets/meat.png",width: 230):SizedBox()),
                             Image.asset("assets/bottom-bun.png",width: 230),
                             ]
                       
                  ),
                   Padding(
                     padding: const EdgeInsets.only(top: 40),
                     child: Column(
                      
                      children: List.generate(4,
                        (index)=>
                                Padding(
                                  padding: const EdgeInsets.only(bottom: 10,left: 30),
                                  child: GestureDetector(
                                     onTap: (){
                                      setState(() {
                                        selecetindex=index;
                                        choice[index]=!choice[index];
                                      });
                                 },
                                    child: Container(
                                      padding: EdgeInsets.all(4),
                                      width: 60,
                                      height: 60,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        border: Border.all(color: Colors.yellow,width: 1)),
                                      child: Stack(
                                          alignment: Alignment.center,
                                           children: [
                                                Image.asset(imgs[index],width: 60),
                                            Visibility(
                                            visible: choice[index],
                                            child:  Icon(Icons.done,color: Colors.yellow,),),
                                            Positioned(
                                              bottom: 3,
                                              child: Text(name[index])),
                                           ],
                                            ),
                                    ),
                                  ),
                                )
                      ),
                               
                         
                                 ),
                   ),
                ],
              ),
            ),
            Flexible(
              child: Container(
                child: GridView.count(
                crossAxisCount: 2,
                
                childAspectRatio: 2.2,
                children: [
                  Text("Double Cheese Burger",style: TextStyle(fontSize: 23,fontWeight: FontWeight.bold),),
                  Text("\$10.99",textAlign: TextAlign.right,style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold)),
                Text("For the cheesiest burger around, try these burger",style: TextStyle(fontSize: 14,color: Colors.grey.shade400),),
                
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: EdgeInsets.only(right: 8),
                      decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(5)),
                      child: GestureDetector(
                         onTap: (){
                          if(count>0){
                          setState(() {
                            count--;
                          });
                          }
                        },
                       
                        child: Icon(Icons.remove,color: Colors.black,))),
                    Text("${count}",style: TextStyle(fontSize: 18),),
                    Container(
                      margin: EdgeInsets.only(left: 8),
                      
                       decoration: BoxDecoration( color: Colors.white,borderRadius: BorderRadius.circular(5)),
                      child: GestureDetector(
                        onTap: (){
                          setState(() {
                            count++;
                          });
                        },
                        child: Icon(Icons.add,color: Colors.black,)),),
                      ],
                ),
                ]),
              ),
            ),
            Flexible(
              child:   SizedBox(
              height: 50,
              width: MediaQuery.of(context).size.width,
              child: ElevatedButton(style: ElevatedButton.styleFrom(shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(8))),onPressed: (){}, child: Text("Add to Cart",style: TextStyle(color: Colors.white),),)),
             ),
          ],
        ),
      ),
    );
  }
}