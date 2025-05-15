import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ThirdPage extends StatelessWidget {
  final String username;
  const ThirdPage({super.key,required this.username});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ThirdPAge"),
        //backgroundColor: Colors.greenAccent,
      ),
      body: Column(
        children: [
          Text(username,style: TextStyle(fontSize: 30,color: Colors.red),),
          ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text("Back"))
        ],
      ),
    );
  }
}