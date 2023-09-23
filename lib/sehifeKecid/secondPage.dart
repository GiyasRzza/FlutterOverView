import 'dart:async';

import 'package:flutter/material.dart';

import 'mainPage.dart';

class SecondPage extends StatefulWidget {
  const SecondPage({super.key});

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
   Future<bool> backButton(BuildContext context) async {
      print("basildiiiiiih");
       Navigator.push(context, MaterialPageRoute(builder: (context) => const MainPage("Main Page"),));
       return true;

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
         leading: IconButton(onPressed: () {
           Navigator.push(context, MaterialPageRoute(builder: (context) => const MainPage("Main Page"),));
         }, icon: const Icon(Icons.arrow_back_ios_new),

         ),
         title: Center(
           child: Container(
             width: 250,
               margin: const EdgeInsetsDirectional.all( 55.0),
               child: const Text("Second Page",
                 style: TextStyle(
                   color: Colors.deepOrange
                 ),

               )

           ),
         ),
       ),
      body: WillPopScope( //bu androidlerde asaqdaki geri duymesidir
        onWillPop: () => backButton(context),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(onPressed: () {
                Navigator.of(context).popUntil((route) => route.isFirst); // teze sehife acmadan bir basa ana sehifeye geri qayidar
                },
                  child: const Text(
                      "Main Page"
                  )

              ),
              ElevatedButton(onPressed: () {
                Navigator.pop(context); //geldiyi sehifeye geri qayidar
                },
                  child: const Text(
                      "Return to the page you came from"
                  )

              ),
              ElevatedButton(onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => const MainPage("Main Page"),));
               },
                  child: const Text(
                      "Go to main page"
                  )

              ),

            ],
          ),
        ),
      )
    );

  }
}
