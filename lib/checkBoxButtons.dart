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
  bool kotlinDurum =false;
  bool dartDurum =false;

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
            CheckboxListTile(
              title: const Text("Kotlin"),
              value: kotlinDurum,
              controlAffinity: ListTileControlAffinity.leading,
              onChanged: (bool? value) {
                          print("Kotlin secildi");
                          setState(() {
                            kotlinDurum=value!;
                          });
              },
            ),
            CheckboxListTile(
              title: const Text("Dart"),
              value: kotlinDurum,
              controlAffinity: ListTileControlAffinity.leading,
              onChanged: (bool? value) {
                print("Dart secildi");
                setState(() {
                  dartDurum=value!;
                });
              },
            ),
          ],
        ),
      ),

    );
  }
}

