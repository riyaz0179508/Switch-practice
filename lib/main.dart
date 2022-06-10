
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
bool _value = false;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            centerTitle: true,
            title: Text("Switch"),
          ),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(_value==true?"Switch On":"Switch Off", style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                  color: _value==true?Colors.green:Colors.black
                ),),
                Switch(
                    value: _value,
                    onChanged: (val){
                      setState(() {
                        _value=val;
                      });
                    })
              ],
            ),
          ),

        ),
      ),
    );
  }
}
