import 'package:flutter/material.dart';

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
      home: const SecondaryPage("Secondary Page"),
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
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme
              .of(context)
              .canvasColor,
          title: Text(widget.title,
            style: const TextStyle(
                fontSize: 50, fontStyle: FontStyle.italic, color: Colors.pink),
          ),
        ),
        body: Row(
          children: [Container(
            width: 200,
            height: 200,
            margin: const EdgeInsets.only(left: 80.0),
            decoration: BoxDecoration(
                color: Colors.red,
                border: Border.all(
                    color: Colors.blue,
                    width: 3.0

                ),
                borderRadius:BorderRadius.circular(50.0)
                // borderRadius: const BorderRadius.all(Radius.circular(15.0)),
            ),
            child: const Center(child: Text("Hello Container",
              style: TextStyle(fontStyle: FontStyle.italic,
                  color: Colors.yellow
              ),

            )
            ),


          )
          ],
        )

    );
  }
}




