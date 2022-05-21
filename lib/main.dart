import 'package:flutter/material.dart';
import 'package:flutter_app/next_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final items = List<String>.generate(10000,(i) => "Item $i");
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          centerTitle: false,
          leading: Icon(Icons.videocam),
          title: const Text("Youtubeアプリ"),
          actions: <Widget>[
            SizedBox(
              width: 40,
              child: FlatButton(
                child: Icon(Icons.search),
                onPressed: () {
                },
              ),
            ),
            SizedBox(
              width: 40,
              child: FlatButton(
                child: Icon(Icons.more_vert),
                onPressed: () {
                },
              ),
            )
          ]
        ),
          body: Container(
            child: Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: <Widget>[
                      SizedBox(
                        width: 60,
                        height: 40,
                        child: Image.network(
                          "https://yt3.ggpht.com/OSc5In8tYOJ3a_WlZiFCe507_xnAz8zh3Qdvy84jPGU_MMVQnxql18V1xAwnOGYsOuE62npdxg=s176-c-k-c0x00ffffff-no-rj"
                        ),
                      ),
                      const SizedBox(
                        width:8
                      ),
                      Column(
                        children: <Widget>[
                          const Text(
                            "KboyのFlutter大学"
                          ),
                          FlatButton(
                            child: Row(
                              children: <Widget>[
                                Icon(Icons.video_call,
                                  color: Colors.red
                                ),
                                Text("登録する")

                              ]
                            ),
                              onPressed: () {
                            }
                          )
                        ]
                      ),
                    ]
                  ),
                ),
                Expanded(
                  child: ListView.builder(
                    itemCount: items.length,
                    itemBuilder: (context, index) {
                      return ListTile(
                        contentPadding: EdgeInsets.all(8),
                        leading: Image.network(
                          "https://yt3.ggpht.com/OSc5In8tYOJ3a_WlZiFCe507_xnAz8zh3Qdvy84jPGU_MMVQnxql18V1xAwnOGYsOuE62npdxg=s176-c-k-c0x00ffffff-no-rj"
                        ),
                      title: Column(
                        children: [
                          Text("Flutter入門",style: TextStyle(
                            fontWeight: FontWeight.bold,
                          )
                          ),

                          Row(
                            children: <Widget>[
                              Text("267回再生"),
                              Text("5日前"),
                            ]
                          )
                        ],
                      ),
                        trailing: Icon(Icons.more_vert),
                      );
                    },
                  ),
                ),
              ],
            )
          )
      )

    );
  }
}

// class MyHomePage extends StatefulWidget {
//
//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         // Here we take the value from the MyHomePage object that was created by
//         // the App.build method, and use it to set our appbar title.
//         title: Text("flutter入門"),
//         actions: <Widget>[
//           Icon(Icons.add),Icon(Icons.share)
//         ]
//       ),
//       body: Center(
//       ),
//     );
//   }
// }
