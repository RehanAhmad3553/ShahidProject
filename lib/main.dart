import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  TextEditingController etOne = TextEditingController();
  String value="";

  void sum()
  {
   setState(() {
     value = etOne.text;
   });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(

          body: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              children: [

                TextField(
                  controller: etOne,
                  decoration: InputDecoration(
                    labelText: "Name",
                    hintText: "Enter Your Name",
                    border: OutlineInputBorder()
                  ),
                ),
                SizedBox(height: 10,),
                Text("$value",style: TextStyle(fontSize: 32,color: Colors.red) ,),
                SizedBox( height: 10,),
              ElevatedButton(onPressed: sum, child: Text('Click Me'))

              ],
            ),
          ),
        ),
      ),
    );
  }
}


