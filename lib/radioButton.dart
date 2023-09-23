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
      home: const MyHomePage(title: 'Radio Button'),
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
  int radioDeyeri =0;

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
              RadioListTile(
                  title: const Text("Sumqayit"),
                  value: 1,
                  activeColor: Colors.red,
                  groupValue: radioDeyeri,
                  onChanged: (int? value) {
                            setState(() {
                              radioDeyeri=value!;
                            });
                    print("Secilen Radio : ${radioDeyeri}");
                  },
              ),
            RadioListTile(
              title: const Text("Baki"),
              value: 2,
              groupValue: radioDeyeri,
              activeColor: Colors.red,
              onChanged: (int? value) {
                setState(() {
                  radioDeyeri=value!;
                });
                print("Secilen Radio : $radioDeyeri");
              },
            ),
            ElevatedButton(
                onPressed: () {
                    if(radioDeyeri==1){
                      print("Sumqayit Secildi");
                    }
                    else if(radioDeyeri==2){
                      print("Baki secildi");
                    }
                },
                child: const Text("Show Me")

            )
          ],
        ),
      ),

    );
  }
}

