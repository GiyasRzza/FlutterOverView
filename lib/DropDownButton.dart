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
                  DropdownButton<String>(
                    value: secilenOlke,
                      items: countryList.map<DropdownMenuItem<String>>((String value){
                        return DropdownMenuItem<String>(
                          value: value, child: Text("Olke :$value",style:const TextStyle(
                          color: Colors.deepPurple,fontSize: 20
                        ),),
                        );


                      }).toList(),
                      icon: const Icon(Icons.arrow_drop_down),
                      onChanged: (String? secilenDeyer) {
                        setState(() {
                          secilenOlke=secilenDeyer!;
                        });
                      },
                  ),
              Text("Secilen Olke :$secilenOlke")
            ],
          ),
        )


    );
  }
}
