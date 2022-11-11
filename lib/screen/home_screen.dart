import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ElevatedButton(
              onPressed: (() {
                Navigator.pushNamed(context, '/table');
              }),
              child: Text(
                "외우기",
                style: TextStyle(fontSize: 80.h),
              ),
              style: ElevatedButton.styleFrom(minimumSize: Size(550.w, 200.h)),
            ),
            ElevatedButton(
                onPressed: (() {
                  Navigator.pushNamed(context, '/infinity');
                }),
                child: Text(
                  "한 개씩 외우기",
                  style: TextStyle(fontSize: 80.h),
                ),
                style:
                    ElevatedButton.styleFrom(minimumSize: Size(550.w, 200.h))),
            ElevatedButton(
                onPressed: (() {
                  Navigator.pushNamed(context, '/check');
                }),
                child: Text(
                  "점검하기",
                  style: TextStyle(fontSize: 80.h),
                ),
                style:
                    ElevatedButton.styleFrom(minimumSize: Size(550.w, 200.h))),
            ElevatedButton(
                onPressed: (() {
                  Navigator.pushNamed(context, '/auto');
                }),
                child: Text(
                  '자동 넘기기',
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
