import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const MyHomePage(title: 'Calculator App'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  void _incrementCounter() {
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(widget.title)),
      body: Container(
        child: Column(
          children: <Widget>[
            Container(
              alignment: Alignment.centerRight,
              padding: EdgeInsets.symmetric(vertical: 24, horizontal: 12),
              child: Text(
                'outp',
                style: TextStyle(fontSize: 48, fontWeight: FontWeight.bold),
              ),
            ),
            Expanded(child: Divider()),
            new Column(
              children: [
                Row(children: [Text('7'), Text('8'), Text('9'), Text('/')]),
                Row(children: [Text('4'), Text('5'), Text('6'), Text('*')]),
                Row(children: [Text('1'), Text('2'), Text('3'), Text('-')]),
                Row(children: [Text('.'), Text('0'), Text('00'), Text('+')]),
                Row(children: [Text('CLEAR'), Text('=')]),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
