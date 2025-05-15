import 'package:flutter/material.dart';

import 'ThirdPage.dart';

class UserInfo extends StatelessWidget {
  final String name;
  const UserInfo({super.key,required this.name});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Second Page"),
        //backgroundColor: Colors.greenAccent,
      ),
      body: Column(
        children: [
          Text(name,style: TextStyle(fontSize: 30,color: Colors.greenAccent),),
          ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text("Back")),
          ElevatedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => ThirdPage(username:name)));
              },
              child: Text("Next Page")),
          Center(
            child: Text(
              "My name is shanto",
              style: TextStyle(color: Colors.red),
            ),
          ),
        ],
      ),
    );
  }
}