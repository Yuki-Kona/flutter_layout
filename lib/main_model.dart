import 'package:flutter/material.dart';

class MainModel extends ChangeNotifier{
  String title = '';
  String colorCord = 'ff0000';
  String hash = '#';
  int height = 60;

  Future colorChang(String colorNumber)async{
    colorCord = colorNumber;
    notifyListeners();
  }

  Future heightChang(int heightNumber)async{
    height = heightNumber;
    notifyListeners();
  }
}

//カラーコードを使うためのクラス
class HexColor extends Color {
  static int _getColorFromHex(String hexColor) {
    hexColor = hexColor.toUpperCase().replaceAll('#', '');
    if (hexColor.length == 6) {
      hexColor = 'FF$hexColor';
    }
    return int.parse(hexColor, radix: 16);
  }

  HexColor(final String hexColor) : super(_getColorFromHex(hexColor));
}