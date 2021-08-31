import 'package:backdrop/app_bar.dart';
import 'package:backdrop/button.dart';
import 'package:backdrop/scaffold.dart';
import 'package:bottom_bar/consts/color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List _imageSliderimageList = [
    "assets/carousel1.png",
    "assets/carousel2.jpeg",
    "assets/carousel3.jpg",
    "assets/carousel4.png"
  ];

  List _brandImages = [
    'assets/addidas.jpg',
    'assets/apple.jpg',
    'assets/dell.jpg',
    'assets/h&m.jpg',
    'assets/nike.jpg',
    'assets/samsung.jpg',
    'assets/huawei.jpg',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: BackdropScaffold(
          frontLayerBackgroundColor: Theme.of(context).scaffoldBackgroundColor,
          headerHeight: MediaQuery.of(context).size.height * 0.25,
          appBar: BackdropAppBar(
            title: Text("Home"),
            leading: BackdropToggleButton(icon: AnimatedIcons.home_menu),
            flexibleSpace: Container(
              decoration: BoxDecoration(
                  gradient: LinearGradient(colors: [
                ColorsConsts.starterColor,
                ColorsConsts.endColor
              ])),
            ),
            actions: <Widget>[
              IconButton(
                  iconSize: 15,
                  onPressed: () {},
                  padding: EdgeInsets.all(10),
                  icon: CircleAvatar(
                    radius: 15,
                    backgroundColor: Colors.white,
                    child: CircleAvatar(
                      radius: 13,
                      backgroundImage: NetworkImage(
                          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS4PdHtXka2-bDDww6Nuect3Mt9IwpE4v4HNw&usqp=CAU"),
                    ),
                  ))
            ],
          ),
          backLayer: SizedBox(
            height: 150.0,
            width: 300.0,
          ),
          frontLayer: Column(
            children: [
              Container(
                child: ImageSlideshow(
                  width: double.infinity,
                  height: 190,
                  initialPage: 0,
                  indicatorColor: Colors.purple,
                  indicatorBackgroundColor: Colors.grey,
                  onPageChanged: (value) {
                    debugPrint('Page changed: $value');
                  },
                  autoPlayInterval: 3000,
                  isLoop: true,
                  children: [
                    Image.asset(_imageSliderimageList[0], fit: BoxFit.cover),
                    Image.asset(_imageSliderimageList[1], fit: BoxFit.cover),
                    Image.asset(_imageSliderimageList[2], fit: BoxFit.cover),
                    Image.asset(_imageSliderimageList[3], fit: BoxFit.cover)
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Text(
                      "Popular Brand",
                      style: TextStyle(fontWeight: FontWeight.w800, fontSize: 20),
                    ),
                    Spacer(),
                    TextButton(
                        onPressed: () {},
                        child: Text(
                          "View all...",
                          style: TextStyle(
                              fontWeight: FontWeight.w800,
                              color: Colors.red,
                              fontSize: 15),
                        ))
                  ],
                ),
              ),
              Container(
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(25)),
                width: MediaQuery.of(context).size.width*0.95,
                height: 210,
                child: ImageSlideshow(
                  width: double.infinity,
                  height: 190,
                  initialPage: 0,
                  indicatorColor: Colors.purple,
                  indicatorBackgroundColor: Colors.grey,
                  onPageChanged: (value) {
                    debugPrint('Page changed: $value');
                  },
                  autoPlayInterval: 3000,
                  isLoop: true,
                  children: [
                    Image.asset(_brandImages[0], fit: BoxFit.cover),
                    Image.asset(_brandImages[1], fit: BoxFit.cover),
                    Image.asset(_brandImages[2], fit: BoxFit.cover),
                    Image.asset(_brandImages[3], fit: BoxFit.cover),
                    Image.asset(_brandImages[4], fit: BoxFit.cover),
                    Image.asset(_brandImages[5], fit: BoxFit.cover),
                    Image.asset(_brandImages[6], fit: BoxFit.cover),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
