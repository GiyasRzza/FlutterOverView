import 'dart:ffi';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Qiyas Demo'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});


  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var countryList = <String>[];
  String secilenOlke = "Azerbaycan";
  @override
  void initState() {
    super.initState();
    countryList.add("Azerbaycan");
    countryList.add("Turkiye");
    countryList.add("Rusia");
    countryList.add("Amerika");
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: Text(widget.title),
        ),
        body:Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
                GestureDetector(
                  onTap: () {
                    print("Containere basdin");
                  },
                  onDoubleTap: () {
                    print("Containere iki defe ardicil basildi");

                  },
                  onLongPress: () {
                    print("Containere uzun basildi");

                  },
                  child: Container(
                    width: 200,height: 200,color: Colors.indigo ,
                  ),
                )
            ],
          ),
        )


    );
  }
}
