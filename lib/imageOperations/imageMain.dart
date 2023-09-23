import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "main Bucaq",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.white),
        useMaterial3: true,

      ),
      home: const SecondaryPage("Image"),
    );
  }

}

class SecondaryPage extends StatefulWidget {
  const SecondaryPage(this.title, {super.key});

  final String title;

  @override
  State<SecondaryPage> createState() => SecondaryPageState();

}

class SecondaryPageState extends State<SecondaryPage> {

  @override
  Widget build(BuildContext context) {
    var circ= BoxDecoration(
        borderRadius: BorderRadius.circular(50.0),
        color: Colors.cyanAccent
    );
    return Scaffold(
        appBar: AppBar(
            backgroundColor: Theme
                .of(context)
                .canvasColor,
            title: Container(
              alignment: Alignment.center,
              width: 500 ,height: 100,color: Colors.yellow,
              margin: const EdgeInsetsDirectional.all( 55.0),
              child: Text(widget.title,
                style: const TextStyle(
                    fontSize: 20, fontStyle: FontStyle.italic, color: Colors.red),
              ),
            )
        ),
        body:Column(
          children: [
            Image.asset("D:\\GUI\\flutter_projects\\lessons\\lib\\imageOperations\\images\\qiyas.png"),
            const Text("Photo")
          ],
        )
    );
  }
}




