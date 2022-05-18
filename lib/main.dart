import 'package:flutter/material.dart';

main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var style = ElevatedButton.styleFrom(
        textStyle: const TextStyle(fontSize: 20),
        primary: Colors.green,
        minimumSize: Size(100, 50));
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.grey,
          title: Text(
            "Calculator",
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
          ),
        ),
        body: SizedBox(
          width: double.infinity,
          child: Column(children: [
            Text(
              "Result",
              style: TextStyle(color: Colors.black, fontSize: 20.0),
            ),
            Form(
              child: TextFormField(
                decoration: InputDecoration(
                    hintText: "Calculate here...", labelText: "Calculate"),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                print("presssed ");
              },
              child: Text("Execute"),
              style: style,
            ),
          ]),
        ),
      ),
    );
  }
}
