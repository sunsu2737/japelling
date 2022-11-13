import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class McScreen extends StatefulWidget {
  const McScreen({Key? key}) : super(key: key);

  @override
  _McScreenState createState() => _McScreenState();
}

class _McScreenState extends State<McScreen> {
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
  Map<String, String> answer = {
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
  int wrong_count = 0;
  int spell_index = 0;
  Random random = new Random();
  List<String> view_text = [
    "",
    "",
    "",
    "",
    "",
  ];
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    spell.shuffle();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    view_text[0] = spell[spell_index];
    view_text[1] = spell[random.nextInt(46)];
    view_text[2] = spell[random.nextInt(46)];
    view_text[3] = spell[random.nextInt(46)];
    view_text[4] = spell[random.nextInt(46)];
    List<ElevatedButton> select = [
      ElevatedButton(
          onPressed: () {
            if (answer[view_text[0]] != hira[view_text[0]]!) {
              answer[view_text[0]] = hira[view_text[0]]!;
              wrong_count++;
            }
            spell_index++;
            if (spell_index == spell.length) {
              Navigator.popAndPushNamed(context, '/result',
                  arguments: {"answer": answer, "count": wrong_count});
            }
            view_text[0] = spell[spell_index];
            view_text[1] = spell[random.nextInt(46)];
            view_text[2] = spell[random.nextInt(46)];
            view_text[3] = spell[random.nextInt(46)];
            view_text[4] = spell[random.nextInt(46)];
            view_text.shuffle();
            setState(() {});
          },
          child: Text(
            hira[view_text[0]]!,
            style: TextStyle(fontSize: 20),
          )),
      ElevatedButton(
          onPressed: () {
            if (answer[view_text[0]] != hira[view_text[1]]!) {
              answer[view_text[0]] = hira[view_text[1]]!;
              wrong_count++;
            }
            spell_index++;
            if (spell_index == spell.length) {
              Navigator.popAndPushNamed(context, '/result',
                  arguments: {"answer": answer, "count": wrong_count});
            }
            view_text[0] = spell[spell_index];
            view_text[1] = spell[random.nextInt(46)];
            view_text[2] = spell[random.nextInt(46)];
            view_text[3] = spell[random.nextInt(46)];
            view_text[4] = spell[random.nextInt(46)];
            view_text.shuffle();
            setState(() {});
          },
          child: Text(hira[view_text[1]]!, style: TextStyle(fontSize: 20))),
      ElevatedButton(
          onPressed: () {
            if (answer[view_text[0]] != hira[view_text[2]]!) {
              answer[view_text[0]] = hira[view_text[2]]!;
              wrong_count++;
            }
            spell_index++;
            if (spell_index == spell.length) {
              Navigator.popAndPushNamed(context, '/result',
                  arguments: {"answer": answer, "count": wrong_count});
            }
            view_text[0] = spell[spell_index];
            view_text[1] = spell[random.nextInt(46)];
            view_text[2] = spell[random.nextInt(46)];
            view_text[3] = spell[random.nextInt(46)];
            view_text[4] = spell[random.nextInt(46)];
            view_text.shuffle();
            setState(() {});
          },
          child: Text(hira[view_text[2]]!, style: TextStyle(fontSize: 20))),
      ElevatedButton(
          onPressed: () {
            if (answer[view_text[0]] != hira[view_text[3]]!) {
              answer[view_text[0]] = hira[view_text[3]]!;
              wrong_count++;
            }
            spell_index++;
            if (spell_index == spell.length) {
              Navigator.popAndPushNamed(context, '/result',
                  arguments: {"answer": answer, "count": wrong_count});
            }
            view_text[0] = spell[spell_index];
            view_text[1] = spell[random.nextInt(46)];
            view_text[2] = spell[random.nextInt(46)];
            view_text[3] = spell[random.nextInt(46)];
            view_text[4] = spell[random.nextInt(46)];
            view_text.shuffle();
            setState(() {});
          },
          child: Text(hira[view_text[3]]!, style: TextStyle(fontSize: 20))),
      ElevatedButton(
          onPressed: () {
            if (answer[view_text[0]] != hira[view_text[4]]!) {
              answer[view_text[0]] = hira[view_text[4]]!;
              wrong_count++;
            }
            spell_index++;
            if (spell_index == spell.length) {
              Navigator.popAndPushNamed(context, '/result',
                  arguments: {"answer": answer, "count": wrong_count});
            }
            view_text[0] = spell[spell_index];
            view_text[1] = spell[random.nextInt(46)];
            view_text[2] = spell[random.nextInt(46)];
            view_text[3] = spell[random.nextInt(46)];
            view_text[4] = spell[random.nextInt(46)];
            view_text.shuffle();
            setState(() {});
          },
          child: Text(hira[view_text[4]]!, style: TextStyle(fontSize: 20)))
    ];
    select.shuffle();
    return Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          title: Text('객관식'),
          centerTitle: true,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                spell[spell_index],
                style: TextStyle(fontSize: 500.h, height: 0.5.h),
              ),
              SizedBox(
                height: 40,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: select,
              )
            ],
          ),
        ));
  }
}
