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
    final TextEditingController textFieldControllerUserName = TextEditingController();
    final TextEditingController textFieldControllerPassword = TextEditingController();

    TextField userName =TextField(
      controller: textFieldControllerUserName ,
      decoration:  InputDecoration(
        hintText: "User Name",
        filled: true,
        fillColor: Colors.white,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),

      ),
    );
    TextField password =TextField(
      controller: textFieldControllerPassword,
      obscureText: true,
      decoration: InputDecoration(
        hintText: "Password",
        filled: true,
        fillColor: Colors.white,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),

      ),
    );
    return Scaffold(
      backgroundColor: Colors.deepPurple,
        body:SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding:  EdgeInsets.only(bottom: ekranHundurluyu/20),
                  child: SizedBox(
                      width: ekranHundurluyu/6, height: ekranEni/4,
                      child: Image.asset("D:\\GUI\\flutter_projects\\lessons\\lib\\imageOperations\\images\\home-06.jpg")
                  ),
                ),
                  Padding(
                    padding:  EdgeInsets.all(ekranHundurluyu/30),
                    child: userName
                  ),
                Padding(
                  padding:  EdgeInsets.all(ekranHundurluyu/30),
                  child: password
                  ),
                ElevatedButton(
                     onPressed: () {
                       AlertDialog dialog = AlertDialog(
                         title:  Text(
                            "Welcome   '${textFieldControllerUserName.text}' "
                                "Your Password  '${textFieldControllerPassword.text}'"
                         ),
                         content: const Text("Success"),
                       );
                       showDialog(context: context, builder: (BuildContext context){
                         return dialog;
                       });
                       },
                    child: const Text("Log In")),

               GestureDetector(
                 onTap:() => showDialog(context: context, builder:(BuildContext context){
                   return const AlertDialog(
                     title: Text("Sorry! )"),
                   );
               }),
                 child: Padding(
                   padding:  EdgeInsets.only(top: ekranHundurluyu/30),
                   child: const Text("Help Me!"),
                 ),
               )

              ],

          ),
        ),
    );
  }
}





