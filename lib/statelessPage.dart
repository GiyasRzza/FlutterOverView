import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    debugPrintBeginFrameBanner =false;
    return MaterialApp(
      title: 'Food Store',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const Sehife1(),
    );
  }
}

// class MyHomePage extends StatefulWidget {
//   const MyHomePage({super.key, required this.title});
//
//
//   final String title;
//
//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }
//
// class _MyHomePageState extends State<MyHomePage> {
//   int counter = 0;
//   @override
//   Widget build(BuildContext context) {
//     var ekranInfo=MediaQuery.of(context);
//     final double ekranHeight   =ekranInfo.size.height;
//     final double ekranWidth = ekranInfo.size.width;
//
//
//   }
// }

class Sehife1 extends StatelessWidget {
  const Sehife1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
         backgroundColor: Colors.orange,
         title: Text("Stateless"),
       ),
       body:Center(child: const Text("Sehife 1"))


   );
  }
}





