import 'dart:developer';

import 'package:birinchy_ekinchy_tapshirma/ekinchy_bet.dart';
import 'package:flutter/material.dart';

class birinchyBet extends StatefulWidget {
  const birinchyBet({ Key key }) : super(key: key);

  @override
  _birinchyBetState createState() => _birinchyBetState();
}

class _birinchyBetState extends State<birinchyBet> {
  int number = 0;
  
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title:const Text("Тапшырма 01",
        style: TextStyle(color: Colors.black),),
        centerTitle: true,
        backgroundColor:Colors.white,
        elevation: 0,
      ),
      body: Column (
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
         GestureDetector(
           onTap: (){
             Navigator.push(context, MaterialPageRoute(builder:(context){
               return EkinchyBet(
                 kelgen: number.toString(),);
               }));
           },
           child: Container(
            decoration: const BoxDecoration(
              color: Color(0xFF46F3F3),
              borderRadius: BorderRadius.all(Radius.circular(12))
           ),
             child:  Padding(
              padding: 
              const EdgeInsets.symmetric(horizontal: 120.0, vertical: 18.0),
              child: Text('сан: ${number.toString()}',
              style: TextStyle(fontSize: 22.0, fontWeight: FontWeight.bold),
              ),
            ),
            ),
         ),
        const SizedBox(height: 39.0,),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: (){
                number--;
                setState(() {
                  
                });
                log('number--===>> $number');
              },
              child: const Icon(Icons.remove),
              style: ElevatedButton.styleFrom(
                shape: const RoundedRectangleBorder(
                  borderRadius:BorderRadius.all(Radius.circular(12)),
                ),
                elevation: 1,
                primary: const Color(0xFF005EA6),
                padding: 
                const EdgeInsets.symmetric(horizontal: 25, vertical: 15),
              ),
            ),
            const SizedBox(width: 28.0,),

             ElevatedButton(
              onPressed: (){
                number++;
                setState(() {
                  
                });
                log('number++===>> $number');
              },
              child: const Icon(Icons.add), 
              style: ElevatedButton.styleFrom(
                shape: const RoundedRectangleBorder(
                  borderRadius:BorderRadius.all(Radius.circular(12)),
                ),
                elevation: 1,
                primary: const Color(0xFF005EA6),
                padding: 
                const EdgeInsets.symmetric(horizontal: 25, vertical: 15),
              ),
             ),          
          ],
        ),
        ],
        ),
    );
  }
}