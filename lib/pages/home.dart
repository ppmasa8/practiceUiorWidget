import 'package:flutter/material.dart';
import 'package:hands_on_wallpaper/pages/home_widgets/gradient_background.dart';
import 'package:hands_on_wallpaper/pages/home_widgets/list_wallpapers.dart';
import 'package:hands_on_wallpaper/pages/home_widgets/main_card.dart';
import 'package:hands_on_wallpaper/pages/home_widgets/main_title.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GradientBackground(
        padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [

                    SizedBox(height: 45),
                    MainTitle(),
                  
                    SizedBox(height: 20),
                    WallpaperList(),

                  ],
                ),
              ),

              Container(
                width: MediaQuery.of(context).size.width,
                padding: EdgeInsets.symmetric(vertical: 15),
                decoration: BoxDecoration(
                  color: Color(0xff682279)
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    SvgPicture.asset(
                      '../assets/icons/load.png', 
                      height: 25, 
                      color: Colors.white.withOpacity(0.4)
                    )
                  ],
                )
              )
            ],
          ),
        ),
      )
    );
  }
}
