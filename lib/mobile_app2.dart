import 'package:flutter/material.dart';
class MobileApp2 extends StatefulWidget {
  const MobileApp2({super.key});

  @override
  State<MobileApp2> createState() => _MobileApp2State();
}

class _MobileApp2State extends State<MobileApp2> {
  int value=0;
  void decrement(){
    if (value>0) {
      setState(() {
        value -= 1;
      });
    }else{
      print("value cannot be negative");
    }

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold( appBar:AppBar(
      title:Text(
        'Simple Flutter App',
        style:TextStyle(fontSize:28, fontWeight:FontWeight.bold,
          fontStyle: FontStyle.italic,
          color: Colors.blueGrey,),
      ),
    ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15.0,vertical: 25.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          spacing:10,
          children: [
            Text('The value is $value',
                style:TextStyle(
              fontSize: 26,fontWeight:FontWeight.bold, fontStyle: FontStyle.italic,
            )),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue,
                      padding: EdgeInsets.all(20),
                      elevation:0,
                      shape: CircleBorder(

                      )
                    ),
                    onPressed: () {
                       setState(() {
                         value+=1;
                       });
                      }, child:Icon(Icons.add,size: 25, color:Colors.black)),

              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue,
                      padding: EdgeInsets.all(20),
                      elevation:0,
                      shape:CircleBorder()

                  ),
                  onPressed: () {
                    decrement();

                  }, child:Icon(Icons.remove,size: 25, color:Colors.purple)),
              ],

        ),

      ],
      ),
    ));
  }
}
