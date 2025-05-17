import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:sizer/sizer.dart';

class Module9class3 extends StatelessWidget {
  const Module9class3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Module9class3"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.network('https://tinypng.com/images/social/website.jpg'),
            SizedBox(height: 10,),
            Image.asset('asset/tiger.jpg'),
            SizedBox(height: 10,),
            Container(
              height: 30.h,
              width: 20.w,
              color: Colors.red,
            ),
            Text("My name is Shanto",style: TextStyle(color: Colors.deepPurple,fontSize: 37.sp),),

            OrientationLayoutBuilder(portrait: (Context ) =>Container(
              height: 10.h,
              width: 10.h,
              color: Colors.amber),
              landscape: (context) => Container(
                  height: 10.h,
                  width: 10.h,
                  color: Colors.blueAccent),

            ),
            SizedBox(height: 50,),
          ],
        ),
      ),
    );
  }
}
