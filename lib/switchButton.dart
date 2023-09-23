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
  bool switchControl = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: Text(widget.title),
        ),
        body: Center(
          child: Column(
            children: [
              Switch(
                  value: switchControl,
                  activeTrackColor: Colors.lightGreen,
                  activeColor: Colors.green,
                  inactiveTrackColor: Colors.red,
                  inactiveThumbColor: Colors.black,
                  onChanged: (value){
                      setState(() {
                        switchControl= value;
                        });
                      print("Switch : $value");
                }
                    
              ),
              ElevatedButton(
                  onPressed: () {
                     showDialog(context: context, builder: (context) {
                       return AlertDialog(
                         title: const Text("Salam"),
                         content: Text("$switchControl"),
                       );
                     });
                  },
                  child: const Text("Switch")
              )
            ],
          ),
        )
    );
  }
}

