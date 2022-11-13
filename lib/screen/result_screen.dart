import 'package:flutter/material.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Map<String, dynamic> args =
        ModalRoute.of(context)!.settings.arguments as Map<String, dynamic>;
    Map<String, String> answer = args['answer'];
    int count = args['count'];
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
      "  ": "  ",
      "ゆ": "유",
      "   ": "   ",
      "よ": "요",
      "ら": "라",
      "り": "리",
      "る": "루",
      "れ": "레",
      "ろ": "로",
      "わ": "와",
      "    ": "",
      "     ": "",
      "      ": "",
      "を": "오",
      "ん": "응"
    };
    late List<String> hira_list = hira.keys.toList();
    return Scaffold(
      appBar: AppBar(
        title: Text("결과"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              (hira.length - count - 5).toString() +
                  "/" +
                  (hira.length - 5).toString(),
              style: TextStyle(fontSize: 30),
            ),
            SizedBox(
              height: 10,
            ),
            Expanded(
              child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 5,
                  childAspectRatio: 1.3 / 1,
                ),
                itemCount: hira_list.length,
                itemBuilder: (context, index) {
                  return Container(
                    padding: EdgeInsets.only(bottom: 3, left: 3, right: 3),
                    child: GridTile(
                      child: Container(
                        decoration: BoxDecoration(
                            border:
                                Border.all(color: Colors.black, width: 0.2)),
                        child: Text(
                          hira_list[index],
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 30,
                            height: 1.3,
                            color: hira[hira_list[index]] !=
                                    answer[hira_list[index]]
                                ? Colors.red
                                : Colors.blue,
                          ),
                        ),
                      ),
                      footer: Container(
                        decoration: BoxDecoration(
                            border:
                                Border.all(color: Colors.black, width: 0.2)),
                        child: answer.keys.contains(hira_list[index])
                            ? Text(
                                hira[hira_list[index]] ==
                                        answer[hira_list[index]]
                                    ? hira[hira_list[index]]!
                                    : hira[hira_list[index]]! +
                                        "(" +
                                        answer[hira_list[index]]! +
                                        ")",
                                textAlign: TextAlign.center,
                              )
                            : null,
                      ),
                    ),
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
