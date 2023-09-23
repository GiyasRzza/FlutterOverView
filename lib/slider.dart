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
  double diminish = 50.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children : [
                Text("Netice : ${diminish.toInt()}"

                ),

            Slider(
              min: 0.0,
                max: 100.0,
                value: diminish,
                activeColor: Colors.indigo,
                inactiveColor: Colors.red,
                onChanged: (double value) {
                            setState(() {
                                diminish=value;
                            });
                },
            ),
            ElevatedButton(
                onPressed: () {
                  showDialog(context: context, builder: (context) {
                    return  AlertDialog(
                      title: const Text("Slider Location Data"),
                      content: Text("Slider is ${diminish.toInt()}"),
                    );
                  },);
                },
                child: const Text("Show Slider Data")
            )
          ],
        ),
      ),

    );
  }
}

