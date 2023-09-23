import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    debugPrintBeginFrameBanner =false;
    return MaterialApp(
      title: 'Food Store',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: "Food Store"),
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

  @override
  Widget build(BuildContext context) {
    var ekranInfo=MediaQuery.of(context);
    final double ekranHeight   =ekranInfo.size.height;
    final double ekranWidth = ekranInfo.size.width;
    int counter =0;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: Text(widget.title),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(
                height: ekranHeight/3.5,
                width: ekranWidth/3.5,
                child: Image.asset("D:\\GUI\\flutter_projects\\lessons\\lib\\imageOperations\\images\\fastFood.jpg")
            ),
            Row(
              children: [
                Expanded(
                  child: TextButton(onPressed: (){
                    counter=counter+1;
                    print("Beyenildi $counter");
                  },
                    child: CreateText("Beyen  $counter",ekranWidth/25),



                  ),
                ),
                Expanded(
                  child: TextButton(onPressed: (){
                    print("Yorumlandir");
                  },
                    child: CreateText("Rey Bildir",ekranWidth/25),

                  ),
                ),

              ],
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Text("Doner",style: TextStyle(
                        color: Colors.deepOrange,
                        fontWeight: FontWeight.bold,
                        fontSize: ekranWidth/20
                    ),
                    ),
                  ),
                  Row(
                    children: [
                      CreateText("Lavas Doner", ekranWidth/25),
                      const Spacer(),
                      CreateText("23.09.2023", ekranWidth/25)
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),


    );
  }
}

class CreateText extends StatelessWidget{
  late String textInfo;
  late double textSize;

  CreateText(this.textInfo, this.textSize, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        textInfo ,
        style: TextStyle(
          fontSize: textSize,

        ),
      ),
    );
  }
}



