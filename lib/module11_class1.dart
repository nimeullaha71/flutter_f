import 'package:flutter/material.dart';
import 'package:flutter_f/widget/picture.dart';
import 'package:sizer/sizer.dart';

class module11Class1 extends StatefulWidget {
  const module11Class1({super.key});

  @override
  State<module11Class1> createState() => _module11Class1State();
}

class _module11Class1State extends State<module11Class1> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text("Are you sure?"),
            content: Text("Are you sure you want to delete this?"),
            actions: [
              TextButton(
                onPressed: () {
                  Navigator.pop(context); // Close the dialog
                },
                child: Text("Cancel"),
              ),
              TextButton(
                onPressed: () {
                  Navigator.pop(context); // Close the dialog and perform delete action
                  // Add your delete action here
                },
                child: Text("Okay"),
              ),
            ],
          );
        },
      );
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("MOdule11"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [


          ElevatedButton(
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                  content: Text(
                    "payment Successful",
                    style: TextStyle(fontSize: 20),
                  ),
                  duration: Duration(seconds: 3),
                  action: SnackBarAction(label: 'Undo', onPressed: () {}),
                ));
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.deepPurple,
              ),
              child: Text(
                "SnackBar",
                style: TextStyle(color: Colors.white, fontSize: 25),
              )),

          ElevatedButton(
              onPressed: () {
                showModalBottomSheet(
                    context: context,
                    builder: (context) {
                      return Column(
                        children: [
                          Center(
                            child: Text(
                              "THis is bottom sheet",
                              style: TextStyle(fontSize: 25),
                            ),
                          ),
                          Container(
                            height: 100,
                            width: 150,
                            color: Colors.red,
                          )
                        ],
                      );
                    });
              },
              style:
                  ElevatedButton.styleFrom(backgroundColor: Colors.deepPurple),
              child: Text(
                "Bottom Sheet",
                style: TextStyle(fontSize: 25, color: Colors.white),
              )),

          ElevatedButton(
              onPressed: () {
                showDialog(
                    context: context,
                    builder: (context) {
                      return AlertDialog(
                        title: Text("Are You Sure ? "),
                        content: Text("Are You Sure to Delete this ? "),
                        actions: [
                          TextButton(
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              child: Text("Cancel")),
                          TextButton(
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              child: Text("Ok"))
                        ],
                      );
                    });
              },
              style:
                  ElevatedButton.styleFrom(backgroundColor: Colors.deepPurple),
              child: Text("Alert Dialogue",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 25,
                  ))),
          SizedBox(
            height: 10,
          ),

          Text("Some picture",style: TextStyle(fontSize: 30),),
          SizedBox(height: 10,),

          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                SizedBox(width: 5.w,),
                picture(CityImg: 'https://images.unsplash.com/photo-1743071441939-9ec2b3352b54?q=80&w=1978&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D', CityName: 'singapore', CityDescription: 'asgvsdg hdgsvg gdcvgds ',),
                SizedBox(width: 5.w,),
                picture(CityImg: 'https://images.unsplash.com/photo-1743071441939-9ec2b3352b54?q=80&w=1978&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D', CityName: 'singapore', CityDescription: 'asgvsdg hdgsvg gdcvgds ',),
                SizedBox(width: 5.w,),
                picture(CityImg: 'https://images.unsplash.com/photo-1743071441939-9ec2b3352b54?q=80&w=1978&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D', CityName: 'singapore', CityDescription: 'asgvsdg hdgsvg gdcvgds ',),
                SizedBox(width: 5.w,),
                picture(CityImg: 'https://images.unsplash.com/photo-1743071441939-9ec2b3352b54?q=80&w=1978&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D', CityName: 'singapore', CityDescription: 'asgvsdg hdgsvg gdcvgds ',),
              ],
            ),
          )
        ],
      ),
    );
  }
}


