import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Future Builder',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Switch Button'),
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
  var toggles = [false,true,false];
  int secilenIndex=0;
  bool Secilencolor =false;
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
              ToggleButtons(
                isSelected: toggles,
                color: Colors.pink,
                selectedColor: Colors.lightGreen,
                onPressed: (index) {
                  secilenIndex =index;
                  print("${secilenIndex+1}.toggle Secildi");
                  setState(() {
                    toggles[secilenIndex]= !toggles[secilenIndex];
                  });
                },
                children: [
                  Icon(Icons.looks_one),
                  Icon(Icons.looks_two),
                  Icon(Icons.looks_3),
                ],
              ),
              ElevatedButton(
                  onPressed: () {
                      print("En son ${secilenIndex+1} .toglle secildi");
                  },
                  child:const Text("Goster")

              )
            ],
          ),
        ),

    );
  }
}

