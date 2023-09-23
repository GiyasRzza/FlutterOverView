import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Ikinci Usul",
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
    var ekranMelumati = MediaQuery.of(context);
    final double ekranHundurluyu = ekranMelumati.size.height;
    final double ekranEni = ekranMelumati.size.width;

    // var circ= BoxDecoration(
    //     borderRadius: BorderRadius.circular(50.0),
    //     color: Colors.cyanAccent
    // );
    return Scaffold(
        appBar: AppBar(
            backgroundColor: Colors.cyan,
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

            Padding(
              padding:  EdgeInsets.only(top: ekranHundurluyu/100),
              child: SizedBox(
                  width: ekranHundurluyu/2,height:ekranEni/5,

                  child: Image.asset("D:\\GUI\\flutter_projects\\lessons\\lib\\imageOperations\\images\\mdpi.png")

              ),
            ),
            Container(width: ekranEni,height: ekranHundurluyu/4,color: Colors.red,),
            Text("Salam",style: TextStyle(
                fontSize: ekranEni/10
            ),)
          ],

        )
    );
  }
}




