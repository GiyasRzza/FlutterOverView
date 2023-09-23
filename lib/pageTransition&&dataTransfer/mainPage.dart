import 'package:flutter/material.dart';
import 'package:lessons/pageTransition&&dataTransfer/secondPage.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Secondary Page",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.white),
        useMaterial3: true,

      ),
      home: const MainPage("Main Page"),
    );
  }

}

class MainPage extends StatefulWidget {
  const MainPage(this.title, {super.key});

  final String title;
  @override
  State<MainPage> createState() => MainPageState();

}

class MainPageState extends State<MainPage> {

  @override
  Widget build(BuildContext context) {
    var circ= BoxDecoration(
        borderRadius: BorderRadius.circular(50.0),
        color: Colors.cyanAccent
    );
    return Scaffold(
        appBar: AppBar(
            backgroundColor: Colors.redAccent,
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
        body:Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => const SecondPage() ));
              },
                  child: const Text(
                    "Go to Second Page"
                  )

              )
            ],
          ),
        )

    );
  }
}




