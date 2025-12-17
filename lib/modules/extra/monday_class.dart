import 'package:flutter/material.dart';


class MondayClass extends StatefulWidget {
  const MondayClass({super.key});

  @override
  State<MondayClass> createState() => _monday_classState();
}

class _monday_classState extends State<MondayClass> {
   final firstNumberController=TextEditingController();
   final secondNumberController=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('MondayClass'),
        backgroundColor:Color(0xffF9E7B2),
      ),
      body:SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextFormField(
                keyboardType: TextInputType.number,
                controller: firstNumberController,
                style: TextStyle(fontSize: 20,color: Colors.deepOrange,),
                decoration: InputDecoration(
                  labelText: 'Enter first number',
                  labelStyle: TextStyle(fontSize: 24,color: Colors.black),

                ),
              ),
              SizedBox(height: 20,),
              TextFormField(
                keyboardType: TextInputType.number,
                controller: secondNumberController,
                style: TextStyle(fontSize: 20,color: Colors.deepOrange,),
                decoration: InputDecoration(
                  labelText: 'Enter second number',
                  labelStyle: TextStyle(fontSize: 24,color: Colors.black),

                ),
              ),
              SizedBox(height: 40,),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xffF9E7B2)
                    ),
                    onPressed: () {
                      final firstNumber= int.tryParse(firstNumberController.text)?? 0;
                      final secondNumber= int.tryParse(secondNumberController.text)?? 0;
                      setState(() {
                        final sum=firstNumber+secondNumber;
                        showDialog(context: context, builder: (context)=>AlertDialog(
                          title: Text('Result'),
                          content: Text('The sum is $sum'),
                        ),
                        );
                      });
                    }, child: Text('Add Numbers')),
              ),
            ],
          ),
        ),
      ),

    );

  }
}
