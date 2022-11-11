import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class InfinityScreen extends StatefulWidget {
  const InfinityScreen({Key? key}) : super(key: key);

  @override
  _InfinityScreenState createState() => _InfinityScreenState();
}

class _InfinityScreenState extends State<InfinityScreen> {
  int index = 0;
  final Map<String, String> hira = {
    "あ": "아",
    "い": "이",
    "う": "우",
    "え": "에",
    "お": "오",
    "か": "카",
    "き": "키",
    "く": "쿠",
    "け": "케",
    "こ": "코",
    "さ": "사",
    "し": "시",
    "す": "수",
    "せ": "세",
    "そ": "소",
    "た": "타",
    "ち": "치",
    "つ": "추",
    "て": "테",
    "と": "토",
    "な": "나",
    "に": "니",
    "ぬ": "누",
    "ね": "네",
    "の": "노",
    "は": "하",
    "ひ": "히",
    "ふ": "후",
    "へ": "헤",
    "ほ": "호",
    "ま": "마",
    "み": "미",
    "む": "무",
    "め": "메",
    "も": "모",
    "や": "야",
    "ゆ": "유",
    "よ": "요",
    "ら": "라",
    "り": "리",
    "る": "루",
    "れ": "레",
    "ろ": "로",
    "わ": "와",
    "を": "오",
    "ん": "응"
  };
  late List<String> spell = hira.keys.toList();
  int spell_index = 0;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    spell.shuffle();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('한 개씩'),
        centerTitle: true,
      ),
      body: index == 0
          ? GestureDetector(
              behavior: HitTestBehavior.translucent,
              onTap: () {
                index = 1;
                setState(() {});
              },
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      spell[spell_index],
                      style: TextStyle(fontSize: 500.h, height: 0.5.h),
                    ),
                    Text(
                      "□",
                      style: TextStyle(fontSize: 100.h, height: 5.h),
                    )
                  ],
                ),
              ),
            )
          : GestureDetector(
              behavior: HitTestBehavior.translucent,
              onTap: () {
                index = 0;
                spell_index++;
                if (spell_index >= spell.length) {
                  spell_index = 0;
                  spell.shuffle();
                }
                setState(() {});
              },
              child: Center(
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        spell[spell_index],
                        style: TextStyle(fontSize: 500.h, height: 0.5.h),
                      ),
                      Text(
                        hira[spell[spell_index]]!,
                        style: TextStyle(fontSize: 100.h, height: 5.h),
                      )
                    ]),
              ),
            ),
    );
  }
}
