import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Project",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.white),
        useMaterial3: true,

      ),
      home: const SecondaryPage("Project Ilham Ver"),
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
    var ekranMelumati = MediaQuery.of(context);
    final double ekranHundurluyu = ekranMelumati.size.height;
    final double ekranEni = ekranMelumati.size.width;
    return Scaffold(
        appBar: AppBar(
            backgroundColor:Colors.yellow,
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
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(
                width: ekranHundurluyu/2,height:ekranEni/5,
                child: Image.asset("D:\\GUI\\flutter_projects\\lessons\\lib\\imageOperations\\images\\mdpi.png"),

            ),
            Center(
              child: Text("Instagram",style: TextStyle(
                  fontSize: ekranEni/10
              ),),

            ),
            ElevatedButton(
              onPressed: () {
                  AlertDialog alert= const AlertDialog(
                        title: Text("Ilham Verildi yer get"),
                        backgroundColor: Colors.blue,
                        content: Text("Hello bot"),


                );
                  showDialog(context: context , builder: (BuildContext context) {
                      return alert;
                  });
              },
              child: const Text("Ilham Ver"),
            )
          ],
        )
    );
  }
}




