import 'package:flutter/material.dart';
import 'package:lessons/sehifeKecid/backStack/gameScreen.dart';


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
    final TextEditingController textFieldControllerName = TextEditingController();
    final TextEditingController textFieldControllerAge = TextEditingController();
    final TextEditingController textFieldControllerHeight= TextEditingController();


    TextField nameField =TextField(
      controller: textFieldControllerName,
      decoration:  InputDecoration(
        hintText: "Name",
        filled: true,
        fillColor: Colors.white,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),

      ),
    );
    TextField ageField =TextField(
      controller: textFieldControllerAge,
      decoration:  InputDecoration(
        hintText: "Age",
        filled: true,
        fillColor: Colors.white,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),

      ),
    );
    TextField heightField =TextField(
      controller: textFieldControllerHeight,
      decoration:  InputDecoration(
        hintText: "Height",
        filled: true,
        fillColor: Colors.white,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),

      ),
    );

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
                    fontSize: 20, fontStyle: FontStyle.italic, color: Colors.yellow),
              ),
            )
        ),
        body:Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
                ElevatedButton(onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => const GameScreen(),));
                },
                    child: const Text("Play Game ")

                )
            ],
          ),
        )

    );
  }
}




