import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Expanded",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.white),
        useMaterial3: true,

      ),
      home: const SecondaryPage("Expanded"),
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
        body:  Center(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Expanded(
                flex: 30,
                child: Container(
                  width: 150,height: 80,color:Colors.blue,
                ),
              ),
              Expanded(
                flex: 70,
                child: Container(
                  width: 50,height: 80,color: Colors.red,
                ),
              ),
              // Container(
              //   width: 80,height: 80,color: Colors.green,
              // )
            ],
          ),
        )

    );
  }
}




