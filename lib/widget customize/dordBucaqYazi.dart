import 'package:flutter/cupertino.dart';

class dordBucaqYazi extends StatelessWidget{
   String space;
   double lenght;


  dordBucaqYazi(this.space, this.lenght, {super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      space,
      style: TextStyle(
        fontSize: lenght
      ),
    );
  }


}