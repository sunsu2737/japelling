import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SubjectiveScreen extends StatefulWidget {
  const SubjectiveScreen({Key? key}) : super(key: key);

  @override
  _SubjectiveScreenState createState() => _SubjectiveScreenState();
}

class _SubjectiveScreenState extends State<SubjectiveScreen> {
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
  TextEditingController _controller = TextEditingController();
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
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          title: Text('주관식'),
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
              TextField(
                controller: _controller,
                maxLength: 1,
                decoration: InputDecoration(),
                autofocus: true,
                textAlign: TextAlign.center,
                onSubmitted: (value) {
                  if (hira[spell[spell_index]] != value) {
                    wrong_count++;
                    answer[spell[spell_index]] = value;
                  }
                  spell_index++;
                  if (spell_index == spell.length) {
                    Navigator.popAndPushNamed(context, '/result',
                        arguments: {"answer": answer, "count": wrong_count});
                  }
                  setState(() {});
                  _controller.clear();
                },
                onEditingComplete: () {},
                textInputAction: TextInputAction.done,
              )
            ],
          ),
        ));
  }
}
