import 'package:flutter/material.dart';

void main() {
  runApp(myApp());
}

class myApp extends StatelessWidget {
  const myApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          primaryColor: Colors.red,
          appBarTheme: AppBarTheme(
            color: Colors.red,
            centerTitle: true,
          )),
      title: "Flutter app",
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController _numberController = TextEditingController();
    TextEditingController _enailController = TextEditingController();
    TextEditingController _passwordController = TextEditingController();
    final _formKey = GlobalKey<FormState>();
    return Scaffold(
      appBar: AppBar(
        //backgroundColor: Colors.blue,
        title: Column(
          children: [
            Text(
              "Ostad Flutter 2",
              style: TextStyle(fontSize: 25, color: Colors.white),
            ),
          ],
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Form(
              key: _formKey,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    TextFormField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: "email",
                        label: Text("Email"),
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return "Empty email not allow";
                        }
                        return null;
                      },
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    TextFormField(
                      obscureText: true,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: "Enter Your password",
                        label: Text("Password"),
                      ),
                      validator: (value) {
                        if (value == null ||
                            value.isEmpty ||
                            value.length < 8) {
                          return "password must be at least 8 character";
                        } else
                          return null;
                      },
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    ElevatedButton(
                        onPressed: () {
                          if (_formKey.currentState!.validate()) {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => UserInfo(name:"shanto")));
                          }
                        },
                        child: Text(
                          "Submit",
                          style: TextStyle(fontSize: 25),
                        ))
                  ],
                ),
              )),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SizedBox(
              height: 300,
              child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 4,
                  mainAxisSpacing: 20,
                  crossAxisSpacing: 20,
                ),
                itemCount: 20,
                itemBuilder: (context, index) {
                  return Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Colors.red),
                      child: Center(
                          child: Icon(
                        Icons.mobile_friendly,
                        size: 50,
                      )));
                },
              ),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton.extended(
          onPressed: () {
            print("shanto");
          },
          label: Icon(Icons.add)),
    );
  }
}

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
