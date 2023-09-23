import 'package:flutter/material.dart';

class ResultPage extends StatefulWidget {
  const ResultPage({super.key});

  @override
  State<ResultPage> createState() => _ResultPageState();
}

class _ResultPageState extends State<ResultPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            backgroundColor: Colors.redAccent,
            title: Container(
              alignment: Alignment.center,
              width: 500 ,height: 100,color: Colors.yellow,
              margin: const EdgeInsetsDirectional.all( 55.0),
              child: const Text("Result Page",
                style:  TextStyle(
                    fontSize: 20, fontStyle: FontStyle.italic, color: Colors.green),
              ),
            )
        ),
        body:Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(onPressed: () {

              },
                  child: const Text("Result Game")

              )
            ],
          ),
        )

    );;
  }
}
