import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Qiyas Demo'),
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
  var tfDate = TextEditingController();
  var tfTime = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body:Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
                TextField(
                  controller: tfTime,
                  decoration: const InputDecoration(hintText: "Saat Daxil edin!"),
                  onTap: () {
                    showTimePicker(
                        context: context,
                        initialTime: TimeOfDay.fromDateTime(DateTime.now()),
                    ).then((alinanSaat){
                      setState(() {
                        tfTime.text= "${alinanSaat?.hour}:${alinanSaat?.minute}";
                      });
                    });

                  },
                ),
            TextField(
              controller: tfDate,
              decoration: const InputDecoration(hintText: "Tarix Daxil edin!"),
              onTap: () {
                showDatePicker(
                  context: context,
                  initialDate: DateTime.now(),
                  firstDate: DateTime(2000),
                  lastDate: DateTime(2050),
                ).then((alinanTarix){
                  setState(() {
                    tfDate.text= "${alinanTarix?.day}/${alinanTarix?.month}/${alinanTarix?.year}";
                  });
                });

              },
            ),
          ],
        ),
      )


    );
  }
}
