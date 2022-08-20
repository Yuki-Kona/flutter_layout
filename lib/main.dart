import 'package:flutter/material.dart';
import 'package:git_layout/app_bar/appbar_1.dart';
import 'package:git_layout/main_model.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
        providers: [
          //provider
          ChangeNotifierProvider<MainModel>(
            create:(context)=>MainModel(),
        ),
      ],
      child: MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
      )
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
  //モデル
    //final MainModel mainModelData = Provider.of<MainModel>(context,listen:true);

    //画面表示
    return Scaffold(
      appBar: AppBar(
        title: const Text('レイアウトの練習'),
      ),
      body: SizedBox(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: SizedBox(
            height: 250,
            child: Column(
            children: [
              //appBarのレイアウト選択
              const Center(
                child: Text('appBarのレイアウト',
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              SizedBox(
                  height: 200,
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Container(
                    decoration:BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white,
                      border: Border.all(width:1),
                      boxShadow: const [
                        BoxShadow(
                        color:Colors.black26,
                        spreadRadius:1.0,
                        blurRadius: 10.0,
                        offset:Offset(10,10),
                      )],
                    ),
                    child: ListView(
                      children:[
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Container(
                            decoration: const BoxDecoration(
                              border: Border(
                                  top:BorderSide(
                                    color: Colors.black,
                                  ),
                                  bottom: BorderSide(
                                    color: Colors.black,
                                  )
                              ),
                            ),
                            child: ListTile(
                              title: const Text('色と高さを変える',
                                style: TextStyle(
                                  fontSize:20,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              onTap: (){
                                Navigator.push(context,MaterialPageRoute(builder: (context)=>const AppBar1()));
                              },
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              ]
            ),
          ),
        ),
      )
    );
  }
}
