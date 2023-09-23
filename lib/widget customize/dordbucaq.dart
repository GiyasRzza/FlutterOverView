import 'package:flutter/material.dart';

class qirmiziDordBucaq extends StatelessWidget{
  final StatelessWidget myText;
  const qirmiziDordBucaq(this.myText, {super.key});

  @override
  Widget build(BuildContext context) {
   return Container(
     width: 150, height: 150, color: Colors.red,
     child:myText
   );
  }

}