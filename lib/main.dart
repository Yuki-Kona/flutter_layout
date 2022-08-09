import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key,}) : super(key: key);
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('レイアウトの練習'),
      ),
      body: SizedBox(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: ListView(

            children: const [
              //appBarのレイアウト選択
              Center(
                child: Text('appBarのレイアウト',
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              SizedBox(
                  height: 200,
                child: Card(
                  elevation: 10,
                  child: Padding(
                    padding: EdgeInsets.all(10.0),
                    child: ListTile(
                      title: Text('レイアウト1',
                      style: TextStyle(
                        fontSize:20,
                        fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ),
                )
              ),
            ],
          ),
        ),
      )
    );
  }
}
