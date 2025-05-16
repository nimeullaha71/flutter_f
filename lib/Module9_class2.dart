import 'package:flutter/material.dart';

class module9 extends StatelessWidget {
  const module9({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Module 9"),
      ),
      body: Center(
        child: Column(
          children: [
            // Container(
            //   color: Colors.deepPurpleAccent,
            //   child: AspectRatio(
            //       aspectRatio: 16/9,
            //     child: Container(
            //       color: Colors.amber,
            //     ),
            //   ),
            // ),
            SizedBox(
              height: 50,
              width: 50,
              child: Container(
                color: Colors.amber,
              ),
            ),

            SizedBox(height: 10,),
            // Container(
            //   height: 350,
            //     width: 250,
            //     color: Colors.blue,
            //
            //       child: FractionallySizedBox(
            //         widthFactor: 0.5,
            //         heightFactor: 0.5,
            //         alignment: Alignment.centerRight,
            //         child: Container(
            //           color: Colors.green,
            //           child: Center(child: Text("My name is shanto")),
            //         ),
            //       ),
            //     ),


            // SizedBox(
            //   height: 500,
            //   width: 200,
            //   child: Column(
            //     children: [
            //       Expanded(
            //         flex: 2,
            //
            //           child: Container(
            //         color: Colors.red,
            //       )),
            //       Expanded(
            //           flex: 4,
            //           child: Container(
            //         color: Colors.green,
            //       ))
            //     ],
            //   ),
            // ),

            Column(
              children: [
                Container(
                  height: 50,
                  width: 50,
                  color: Colors.blue,
                ),
                Container(
                  height: 50,
                  width: 50,
                  color: Colors.deepOrange,
                ),
                Container(
                  height: 50,
                  width: 50,
                  color: Colors.greenAccent,
                )
              ],
            ),
            SizedBox(height: 10,),

            Center(
              child: Stack(
                children: [
                  Container(
                    width: 200,
                    height: 200,
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(20),
                    ),

                  ),
                  Positioned(
                    top: 50,
                    bottom: 50,
                    left: 50,
                    right: 50,
                    child: Container(
                      height: 100,
                      width: 100,
                      decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                  ),
                  Positioned(
                    top: 75,
                    bottom: 75,
                    left: 75,
                    right: 75,
                    child: Container(
                      height: 50,
                      width: 50,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: Colors.deepPurpleAccent,
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
