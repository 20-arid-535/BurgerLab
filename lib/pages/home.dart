import 'package:cookies_ui/pages/burgerdetail.dart';
import 'package:cookies_ui/utils/menu.dart';
import 'package:cookies_ui/utils/tiles.dart';
import 'package:flutter/material.dart';


class Home extends StatefulWidget {
  
  Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final List menu1=[['Chicken',true],['Cheese',false],['Beef',false]];
 final List menuimgs=["assets/PoultryLeg.png","assets/Cheesenew.png","assets/Beef.png"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        elevation: 0,
        leading: Icon(Icons.menu),
        actions: [Padding(
          padding: const EdgeInsets.only(right: 8),
          child: Icon(Icons.person),
        )],
      ),
      bottomNavigationBar: BottomNavigationBar(items: [
        BottomNavigationBarItem(icon: Icon(Icons.home),label: ''),
         BottomNavigationBarItem(icon: Icon(Icons.favorite),label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.notifications),label: '')
      ]),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 10,top: 8,),
            child: Text("What is your ", style: TextStyle(fontSize: 30,color: Colors.grey)),
          ),
           Padding(
             padding: const EdgeInsets.only(left: 10,bottom: 10),
             child: Text("favourite burger?", style: TextStyle(fontSize: 32,fontWeight: FontWeight.bold)),
           ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0),
            child: TextField(
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.search),
                hintText: "Search",
                focusedBorder: OutlineInputBorder(borderSide :BorderSide(color: Colors.grey.shade600)),
                enabledBorder:  OutlineInputBorder(borderSide :BorderSide(color: Colors.grey.shade600)),
                     
              ),
            ),
          ),
          SizedBox(height: 15,),
          Container(
           margin: EdgeInsets.symmetric(horizontal: 17),
            height: 80,
            child: ListView.builder(
              
              itemCount: menu1.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return menu(img: menuimgs[index] ,t: menu1[index][0],isselected: menu1[index][1],tab: () {
                  setState(() {
                    for (var i = 0; i < menu1.length; i++) {
                       menu1[i][1]=false;
                    }
                    menu1[index][1]=true;
                  });
                },);
              },
            
          ),),
          Expanded(
           
            child: ListView(
             
            physics: BouncingScrollPhysics(),
           scrollDirection: Axis.horizontal,
           
            children: [
              tiles(link2: 'assets/pngfind1.png',),
              tiles(link2: 'assets/pngfind1.png',),
              tiles(link2: 'assets/pngfind1.png',)
            ],
          )),
          SizedBox(height: 50,)
        ],
      ),
    );
  }
}