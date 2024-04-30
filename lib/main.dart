import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () {
              // Bu yerga chap tugmasi bosilsa qilinish kerak bo'lgan harakatni yozing
              print('Back button pressed');
            },
          ),
          title: Text('Cards'),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.add),
              onPressed: () {
                print('Add button pressed');
              },
            ),
          ],
        ),
        body: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Image.asset(
                'assets/images/cards.png',
                fit: BoxFit.cover,
              ),
            ),
            Column(
              children: [Image.asset("assets/images/freeze")],
            )
          ],
        ),
      ),
    );
  }
}
