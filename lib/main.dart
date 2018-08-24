import 'package:flutter/material.dart';
import 'model/post.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  @override
    Widget build(BuildContext context) {
      // TODO: implement build
      return MaterialApp(
        home: Home(),
        theme: ThemeData(
          primarySwatch: Colors.blue
        )
      );
    }
}

class Home extends StatelessWidget {
  Widget _listItemBuilder(BuildContext context, int index) {
    return Container(
      color: Colors.white,
      margin: EdgeInsets.all(8.0),
      child: Column(
        children: <Widget>[
          Image.network(posts[index].imageUrl),
          SizedBox(height: 16.0),
          Text(
            posts[index].title,
            style: Theme.of(context).textTheme.title
          ),
          Text(
            posts[index].author,
            style: Theme.of(context).textTheme.subhead
          ),
          SizedBox(height: 16.0),
        ],
      ),
    );
  }

  @override
    Widget build(BuildContext context) {
      // TODO: implement build
      return Scaffold(
        backgroundColor: Colors.grey[100],
        appBar: AppBar(
          title: Text('Flutter 演示'),
          elevation: 10.0,
        ),
        body: ListView.builder(
          itemCount: posts.length,
          itemBuilder: _listItemBuilder,
        )
      );
    }
}

class Hello extends StatelessWidget {
  @override
    Widget build(BuildContext context) {
      // TODO: implement build
      return Center(
      child:Text(
        '你好，世界！',
        textDirection: TextDirection.ltr, // 文字从左到右阅读
        style: TextStyle(
          fontSize: 40.0,
          fontWeight: FontWeight.bold,
          color: Colors.blue,
        )
      ),
    );
    }
}