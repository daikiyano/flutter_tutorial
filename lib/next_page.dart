import 'package:flutter/material.dart';

class NextPage extends StatelessWidget {
  NextPage(this.name);
  final String name;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text("次の画面へ"),
      ),
      body: Container(
        height: double.infinity,
        child: TextFormField(
            decoration: InputDecoration(
              hintText: "田中太郎",
            )
        ),

      ),
    );
  }

}