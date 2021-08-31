import 'package:flutter/material.dart';

class CategoryWidget extends StatelessWidget {
  List<Map<String, String>>? categories = [
    {'categoryName': 'Phones', 'categoryImagePath': "assets/carousel1.png"},
    {'categoryName': 'Phones', 'categoryImagePath': "assets/carousel2.jpeg"},
    {'categoryName': 'Phones', 'categoryImagePath': "assets/carousel3.jpg"},
    {'categoryName': 'Phones', 'categoryImagePath': "assets/carousel4.png"},
    {'categoryName': 'Phones', 'categoryImagePath': "assets/dell.jpg"},
    {'categoryName': 'Phones', 'categoryImagePath': "assets/h&m.jpg."},
    {'categoryName': 'Phones', 'categoryImagePath': "assets/Huawei.jpg"},
    {'categoryName': 'Phones', 'categoryImagePath': "assets/nike.jpg"}
  ];

  late final int index;
  CategoryWidget({
    Key? key,
    required this.index,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          image: DecorationImage(
              image: AssetImage(categories[index]['categoryImagePath']),),),
    );
  }
}
