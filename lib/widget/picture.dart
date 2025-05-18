import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
class picture extends StatelessWidget {
  final String CityImg,CityName,CityDescription;

  const picture({
    super.key,required this.CityImg,required this.CityName,required this.CityDescription,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 50.h,
        width: 50.w,
        decoration: BoxDecoration(
          color: Colors.red,
          borderRadius: BorderRadius.circular(10),
          //color: Colors.red,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.network(
                CityImg),
            Text(CityName,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 25,
                )),
            SizedBox(
              height: 10,
            ),
            Text(
                CityDescription,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                ))
          ],
        ));
  }
}