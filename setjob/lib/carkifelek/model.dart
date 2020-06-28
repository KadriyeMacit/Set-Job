import 'dart:ui';

class Luck{
  final String isim;
  final String image;
  final Color color;

  Luck(this.image, this.color, this.isim);


  String get asset =>  "asset/image/$image.png";
}
