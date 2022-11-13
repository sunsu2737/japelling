import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CheckScreen extends StatelessWidget {
  const CheckScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("시험"),centerTitle: true,),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ElevatedButton(
              onPressed: (() {
                Navigator.pushNamed(context, '/mc');
              }),
              child: Text(
                "객관식",
                style: TextStyle(fontSize: 80.h),
              ),
              style: ElevatedButton.styleFrom(minimumSize: Size(550.w, 200.h)),
            ),
            ElevatedButton(
                onPressed: (() {
                  Navigator.pushNamed(context, '/subjective');
                }),
                child: Text(
                  "주관식",
                  style: TextStyle(fontSize: 80.h),
                ),
                style:
                    ElevatedButton.styleFrom(minimumSize: Size(550.w, 200.h))),
          ],
        ),
      ),
    );
  }
}
