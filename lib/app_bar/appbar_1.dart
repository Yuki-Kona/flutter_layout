import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:photo_view/photo_view.dart';
import 'package:provider/provider.dart';

import '../main_model.dart';

class AppBar1 extends StatelessWidget{
  const AppBar1({Key? key}) : super(key: key);
  final String appBar1 =  'appBarの練習';

  @override
  Widget build(BuildContext context) {
    final MainModel mainModelData = Provider.of<MainModel>(context,listen:true);
    // TODO: appBarの練習１
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(mainModelData.height.toDouble()),
        child: AppBar(
          backgroundColor: HexColor(mainModelData.colorCord),
          title: Text(appBar1),
        ),
      ),
      body:SizedBox(
        child:ListView(
          children:[ Padding(
            padding: const EdgeInsets.only(top:10.0,left: 20,right: 20),
            child: Column(
              children: [
                  TextField(
                    decoration: InputDecoration(
                      label:  const Text('カラーコードでappBarの色を変える'),
                      hintText: '現在のカラーコード${mainModelData.hash+mainModelData.colorCord}',
                    ),
                    maxLength: 6,
                    inputFormatters:[
                      FilteringTextInputFormatter.allow(RegExp(r'[0-9,a-f]')),
                    ],
                    onChanged: (colorNumber){
                      if(colorNumber.length==6){
                        mainModelData.colorChang(colorNumber);
                      }
                    }
                  ),
                TextField(
                  decoration: InputDecoration(
                    labelText: 'appBarの高さを変更',
                    hintText: '現在の高さ${mainModelData.height}',
                  ),
                  keyboardType: TextInputType.number,
                  onSubmitted: (heightNumber){
                    if(int.parse(heightNumber)<501 && int.parse(heightNumber)>19){
                    mainModelData.heightChang(int.parse(heightNumber));
                    }
                  },
                ),
                const SizedBox(
                  height: 30,
                ),
                SizedBox(
                  width: 350,
                  height: 400,
                  child: Container(
                    decoration: BoxDecoration(),
                    clipBehavior: Clip.hardEdge,
                    child: PhotoView(
                      imageProvider: const AssetImage('img/img1.png'),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ]
        )
      ),
    );
  }
}

