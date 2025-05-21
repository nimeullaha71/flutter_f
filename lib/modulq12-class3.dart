import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class Module12Class3 extends StatefulWidget {
  const Module12Class3({super.key});

  @override
  State<Module12Class3> createState() => _Module12Class3State();
}

class _Module12Class3State extends State<Module12Class3> {

  List users = [];
  bool isloading = false;

  Future<void> fatchusers() async{
    setState(() {
      isloading = true;
    });
    final response = await http.get(Uri.parse('https://jsonplaceholder.typicode.com/users'));

    setState(() {
      isloading = false;
    });
    if(response.statusCode == 200){
      users = jsonDecode(response.body);
    }
    else
      {
        throw Exception('Failed to load user');
      }
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    fatchusers();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("User List"),
      ),
      body: isloading ? Center(
        child: CircularProgressIndicator(),
      ) : ListView.builder(
          itemCount: users.length,
          itemBuilder: (context,index){
            final user = users[index];
            return Card(
              margin: EdgeInsets.all(10),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              elevation: 4,
              child: ListTile(
                leading: CircleAvatar(
                  backgroundColor: Colors.deepPurple,
                  child: Text(user['name'][0],style: TextStyle(color: Colors.white),),

                ),
                title: Text(user['name'],style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                subtitle: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 4,),
                    Text("UserName : ${user['username']}",style: TextStyle(color: Colors.black,fontSize: 18),),
                    Text("Email : ${user['email']}",style: TextStyle(color: Colors.black,fontSize: 18),),
                    Text("Phone : ${user['phone']}",style: TextStyle(color: Colors.black,fontSize: 18),),
                    Text("WebSite : ${user['website']}",style: TextStyle(color: Colors.black,fontSize: 18),),
                    Text("Address : ${user['address']['street']}",style: TextStyle(color: Colors.black,fontSize: 18),),
                    Text("Address : ${user['address']['city']}",style: TextStyle(color: Colors.black,fontSize: 18),),
                    Text("Address : ${user['address']['zipcode']}",style: TextStyle(color: Colors.black,fontSize: 18),),
                    Text("Address : ${user['address']['geo']['lat']}",style: TextStyle(color: Colors.black,fontSize: 18),),
                    Text("Address : ${user['address']['geo']['lng']}",style: TextStyle(color: Colors.black,fontSize: 18),),
                    //Text("Address : ${user['address']['street']}",style: TextStyle(color: Colors.black,fontSize: 18),),
                    //Text("Address : ${user['address']['street']}",style: TextStyle(color: Colors.black,fontSize: 18),),
                    //Text("Address : ${user['address']['street']}",style: TextStyle(color: Colors.black,fontSize: 18),),
                  ],
                ),
              ),
            );
          }),
    );
  }
}
