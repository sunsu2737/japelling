import 'package:flutter/material.dart';

class TableScreen extends StatelessWidget {
  const TableScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("νλΌκ°λ"),
        centerTitle: true,
      ),
      body: Center(
          child: Image.asset(
        'assets/table/hira.jpg',
        fit: BoxFit.fitHeight,
      )),
    );
  }
}
