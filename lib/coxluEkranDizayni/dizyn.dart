import 'package:flutter/material.dart';

class telefon extends StatelessWidget{
  const telefon({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset("D:\\GUI\\flutter_projects\\lessons\\lib\\imageOperations\\images\\mdpi.png"),
          const Text("Telefon",style: TextStyle(
            color: Colors.blue
          ),)
        ],
      ),
    );
  }
  
}

class tablet extends StatelessWidget{
  const tablet({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(child: Image.asset("D:\\GUI\\flutter_projects\\lessons\\lib\\imageOperations\\images\\xhdpi.png")),
          const Text("Tablet",style: TextStyle(
            color: Colors.red
          ),)
        ],
      ),
    );
  }

}


class pc extends StatelessWidget{
  const pc({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset("D:\\GUI\\flutter_projects\\lessons\\lib\\imageOperations\\images\\xxhdpi.png"),
          const Text("Pc ",style: TextStyle(
            color: Colors.yellow
          ),)
        ],
      ),
    );
  }

}