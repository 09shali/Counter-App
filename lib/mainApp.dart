import 'package:birinchy_ekinchy_tapshirma/birinchy_bet.dart';
import 'package:birinchy_ekinchy_tapshirma/ekinchy_bet.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      // home: EkinchyBet()
      home:birinchyBet() 
      );
  }
}