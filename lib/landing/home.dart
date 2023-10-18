import 'package:flutter/material.dart';


class landing extends StatefulWidget {
  const landing({super.key});

  @override
  State<landing> createState() => _landingState();
}

class _landingState extends State<landing> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xFF01605A), Color(0xFFFF862D)],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Column(
          children: [
            // SizedBox(height: 20,),
            Container(
              padding: EdgeInsets.all(20),
              child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(Icons.menu,color: Colors.white,size: 30,),
                  Text('dating',style: TextStyle(color: Colors.white,
                  fontSize: 30,fontWeight: FontWeight.w100,
                  ),),
                  Container(
                    child: Row(
                      children: [
                      Icon(Icons.notifications,color: Colors.white,size: 30,),
                      
                      ],
                    ),
                  )
                ],
              ),
            
            ),
            Container(
              padding: EdgeInsets.only(right: 50,top: 100),
              width: 500,
  height: 280,
  decoration: BoxDecoration(
    image: DecorationImage(
      image: AssetImage('assets/new.jpg'),
      fit: BoxFit.cover,
    ),
    gradient: LinearGradient(
      colors: [
        Colors.pink.withOpacity(1),
        Colors.orange.withOpacity(1),
      ],
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
    ),
  ),
  child: Column(
    crossAxisAlignment: CrossAxisAlignment.end,
    children: [
      SizedBox(
        width: 160,
        child: Text('Start Dating and have fun',style: 
        TextStyle(color: Colors.black,fontSize: 23,fontWeight: FontWeight.w800),)),
      SizedBox(
        width: 160,
        child: Text('Swipt to bed',style: TextStyle(fontWeight: FontWeight.w500,color: Colors.black,fontSize: 17),))
    ],
  ),
),
          ],
        ),
      ),
    ),
    );
  }
}