import 'package:flutter/material.dart';
import 'package:hands_on_wallpaper/pages/home_widgets/gradient_background.dart';
import 'package:hands_on_wallpaper/pages/home_widgets/main_title.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GradientBackground(
        padding: EdgeInsets.fromLTRB(20, 45, 20, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            MainTitle()
          ],
        ),
      )
    );
  }
}
