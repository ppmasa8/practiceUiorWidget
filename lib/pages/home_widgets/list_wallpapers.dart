import 'package:flutter/material.dart';
import 'package:hands_on_wallpaper/pages/home_widgets/main_card.dart';

class WallpaperList extends StatefulWidget {
  @override
  _WallpaperListState createState() => _WallpaperListState();
}

class _WallpaperListState extends State<WallpaperList> {
  List<Widget> column1 = [], column2 = [];

  final int qtdWallpapers = 6;

  void populateLists() {
    for (int i = 1; i <= qtdWallpapers; i++) {
      if (i.isOdd)
        column1.add(MainCard(
          image: '../assets/image_${i.toString()}.jpeg',
        ));
      else
        column2.add(MainCard(
          image: '../assets/image_${i.toString()}.jpeg',
        ));
    }
  }

  @override
  void initState() {
    populateLists();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: column1
        )),
        SizedBox(width: 20),
        Expanded(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: column2
        )),
      ],
    );
  }
}
