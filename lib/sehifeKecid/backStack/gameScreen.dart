import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lessons/sehifeKecid/backStack/resultPage.dart';

class GameScreen extends StatefulWidget {
  const GameScreen({super.key});

  @override
  State<GameScreen> createState() => _GameScreenState();
}

class _GameScreenState extends State<GameScreen> {

  @override
  void dispose() {
    super.dispose();
    print("dispose isledi");
  }

  @override
  void deactivate() {
    super.deactivate();
    print("deactive isledi");
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            backgroundColor: Colors.redAccent,
            title: Container(
              alignment: Alignment.center,
              width: 500 ,height: 100,color: Colors.yellow,
              margin: const EdgeInsetsDirectional.all( 55.0),
              child: const Text("Game Screen Page",
                style: TextStyle(
                    fontSize: 20, fontStyle: FontStyle.italic, color: Colors.red),
              ),
            )
        ),
        body:Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(onPressed: () {
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const ResultPage(),));
              },
                  child: const Text("Game end")

              )
            ],
          ),
        )

    );

  }
}
