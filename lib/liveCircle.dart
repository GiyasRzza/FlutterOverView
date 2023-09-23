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
      title: "Flutter Live Circle",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.white),
        useMaterial3: true,

      ),
      home:  MainPage(),
    );
  }

}

class MainPage extends StatefulWidget {
  @override
  State<MainPage> createState() => MainPageState();

}

class MainPageState extends State<MainPage> with WidgetsBindingObserver {

    @override
  void initState() {
      super.initState();
      print("init state method isledi");
      WidgetsBinding.instance.addObserver(this);
  }
  @override
  void dispose() {
      super.dispose();
    WidgetsBinding.instance.removeObserver(this);
  }
  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
      if(state==AppLifecycleState.inactive){
        print("inactive isledi");
      }
      if(state==AppLifecycleState.paused){
        print("paused isledi");
      }
      if(state==AppLifecycleState.resumed){
        print("resumed isledi");
      }
      if(state==AppLifecycleState.detached){
        print("detached isledi");
      }


  }
  @override
  Widget build(BuildContext context) {
      print("build method isledi");
    return Scaffold(
        appBar: AppBar(
            backgroundColor: Colors.redAccent,
            title: Container(
              alignment: Alignment.center,
              color: Colors.yellow,
              margin: const EdgeInsetsDirectional.all( 55.0),
              child: const Text("Live Circle",
                style: TextStyle(
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




