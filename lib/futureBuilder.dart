import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Future Builder',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Future  Builder'),
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
  final TextEditingController textFieldControllerNum= TextEditingController();
  Future<int> faktorialHesabla(int num) async {
    int netice = 1;
    for(int i = 1;  i<= num;i--){
        netice*=i;
    }
    return netice;
  }


  @override
  Widget build(BuildContext context) {
    TextField numField =TextField(
        controller: textFieldControllerNum,
        decoration:  InputDecoration(
          hintText: "Num",
          filled: true,
          fillColor: Colors.white,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),

        )
    );
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body:Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            numField,
            ElevatedButton(
              onPressed: () {
                FutureBuilder<int>(
                  future:faktorialHesabla(int.parse(textFieldControllerNum.text)),
                  builder: (BuildContext context, snapshot){
                    if(snapshot.hasError){
                      print("Xeta netice ${snapshot.error}");
                    }
                    if(snapshot.hasData){
                      print('${snapshot.data}');
                          return Text("Netice ${snapshot.data}");
                    }
                    else{
                      return const Text("Netice Tapilmadi");
                    }
                  },
                );
              },
              child: const Text("Calculate!")
            ),
          ],
        ),
      )


    );
  }
}
