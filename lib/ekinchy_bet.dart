import 'package:flutter/material.dart';

class EkinchyBet extends StatelessWidget {
const EkinchyBet({ Key key, this.kelgen }) : super(key: key);
final String kelgen;

  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Colors. white,
      appBar: AppBar(
        iconTheme: const IconThemeData(
          color: Colors.black,
        ),
        title:const Text("Тапшырма 02",
        style: TextStyle(color: Colors.black),),
        centerTitle: true,
        backgroundColor:Colors.white,
        elevation: 0,
      ),
      body: Center(child: Container(
        decoration: const BoxDecoration(
          color: Color(0xFFf5f7fa), 
          borderRadius: BorderRadius.all(Radius.circular(12)),
        ),
        child:  Padding(
            padding: 
            const EdgeInsets.symmetric(horizontal: 120.0, vertical: 18.0),
            child: Text(
              'сан: $kelgen',
            style: const TextStyle(
              fontSize: 22.0, 
              fontWeight:FontWeight.bold,
              ),
            ),
          ),
      ),
      ),
    );
  }
}