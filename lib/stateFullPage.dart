import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Spacer",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.white),
        useMaterial3: true,

      ),
      home: const Sehife2(),
    );
  }

}

class Sehife2 extends StatefulWidget {
  const Sehife2({super.key});

  @override
  State<Sehife2> createState() => _Sehife2State();
}

class _Sehife2State extends State<Sehife2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            backgroundColor: Theme
                .of(context)
                .canvasColor,
            title: Container(
              alignment: Alignment.center,
              width: 500 ,height: 100,color: Colors.yellow,
              margin: const EdgeInsetsDirectional.all( 55.0),
              child: Text("State Full Page",
                style: const TextStyle(
                    fontSize: 20, fontStyle: FontStyle.italic, color: Colors.red),
              ),
            )
        ),
      body: Center(
        child: const Text(
        "Salam"
      ),
    )

    );
  }
}


// class SecondaryPage extends StatefulWidget {
//   const SecondaryPage(this.title, {super.key});
//
//   final String title;
//
//   @override
//   State<SecondaryPage> createState() => SecondaryPageState();
//
// }
//
// class SecondaryPageState extends State<SecondaryPage> {
//
//   @override
//   Widget build(BuildContext context) {
//     var circ= BoxDecoration(
//         borderRadius: BorderRadius.circular(50.0),
//         color: Colors.cyanAccent
//     );
//     return Scaffold(
//         appBar: AppBar(
//             backgroundColor: Theme
//                 .of(context)
//                 .canvasColor,
//             title: Container(
//               alignment: Alignment.center,
//               width: 500 ,height: 100,color: Colors.yellow,
//               margin: const EdgeInsetsDirectional.all( 55.0),
//               child: Text(widget.title,
//                 style: const TextStyle(
//                     fontSize: 20, fontStyle: FontStyle.italic, color: Colors.red),
//               ),
//             )
//         ),
//         body:  Center(
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               Container(
//                 width: 80,height: 80,color:Colors.red,
//               ),
//               const Spacer(flex: 30),
//               Container(
//                 width: 80,height: 80,color: Colors.blue,
//               ),
//               const Spacer(flex: 70),
//               Container(
//                 width: 80,height: 80,color: Colors.blue,
//               )
//             ],
//           ),
//         )
//
//     );
//   }
// }




