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
        color: Colors.red,
        child: Column(
          children: [
            Text(name),
            Center(
              child:  ElevatedButton(
                child: Text("戻る"),
                onPressed: () {
                // ここに押したら反応するコードを書く
                Navigator.pop(context,"こんばんは");
    },
              ),
            ),
          ],
        ),
      ),
    );
  }

}