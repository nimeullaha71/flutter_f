import 'package:flutter/material.dart';
import 'package:flutter_f/widget/AddWaterBTN.dart';

class waterTracker extends StatefulWidget {
  const waterTracker({super.key});

  @override
  State<waterTracker> createState() => _waterTrackerState();
}

class _waterTrackerState extends State<waterTracker> {

  int _currentIntake = 0;
  final int _goal = 2000;

  void waterAdd(int amount){
    setState(() {
      if(_currentIntake<_goal){
        _currentIntake  = (_currentIntake+amount).clamp(0, _goal);
      }
    });
  }

  void resetWater(){
    setState(() {
      _currentIntake = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    double progress = (_currentIntake/_goal).clamp(0.0, 1.0);
    return Scaffold(
      backgroundColor: Colors.blue.shade50,
      appBar: AppBar(
        title: Text(
          "Water Tracker",
          style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.blueAccent,
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 50,
            ),
            Container(
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.blue.withOpacity(0.2),
                      blurRadius: 10,
                      spreadRadius: 2,
                    )
                  ]),
              child: Column(
                children: [
                  Text(
                    "Today's Intake",
                    style: TextStyle(
                        fontSize: 23,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "${_currentIntake}ml",
                    style: TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                        color: Colors.blueAccent),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Stack(
              alignment: Alignment.center,
              children: [
                Container(
                  height: 200,
                  width: 200,
                  child: CircularProgressIndicator(
                    value: progress,
                    backgroundColor: Colors.grey.shade500,
                    color: Colors.blueAccent,
                    strokeWidth: 12,
                  ),
                ),
                Text(
                  '${(progress*100).toInt()}%',
                  style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            SizedBox(
              height: 40,
            ),
            Wrap(spacing: 15, children: [
              AddWaterBTN(amount: 200, onClick: ()=>waterAdd(200)),
              AddWaterBTN(amount: 500, onClick: () =>waterAdd(500),),
              AddWaterBTN(amount: 1000, onClick: ()=>waterAdd(1000),),
            ]),
            SizedBox(
              height: 40,
            ),
            SizedBox(
                width: double.infinity,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.red.shade400
                    ),
                      onPressed: () =>resetWater(),
                      child: Text(
                        "Reset",
                        style:
                            TextStyle(fontSize: 20, fontWeight: FontWeight.w500,color: Colors.white),
                      )),
                ))
          ],
        ),
      ),
    );
  }
}
