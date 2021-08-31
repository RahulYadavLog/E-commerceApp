import 'package:bottom_bar/consts/color.dart';
import 'package:bottom_bar/provider/dark_theme_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CartEmpty extends StatelessWidget {
  const CartEmpty({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final themeChange = Provider.of<DarkThemeProvider>(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          margin: EdgeInsets.only(top: 80),
          width: double.infinity,
          height: MediaQuery.of(context).size.height * 0.4,
          decoration: BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.fill, image: AssetImage("assets/empty.png"))),
        ),
        Text(
          "Your Cart is Empty",
          textAlign: TextAlign.center,
          style: TextStyle(
              color: themeChange.darkTheme
                  ? Theme.of(context).disabledColor
                  : ColorsConsts.subTitle,
              fontSize: 36,
              fontWeight: FontWeight.w600),
        ),
        SizedBox(height: 30),
        Text(
          "Look like you didn't add anything to your cart yet",
          textAlign: TextAlign.center,
          style: TextStyle(
              color: themeChange.darkTheme
                  ? Theme.of(context).disabledColor
                  : ColorsConsts.subTitle,
              fontSize: 26,
              fontWeight: FontWeight.w600),
        ),
        SizedBox(
          height: 30,
        ),
        Container(
         decoration: BoxDecoration(borderRadius: BorderRadius.circular(25)),
          width: MediaQuery.of(context).size.width*0.9,
            height: MediaQuery.of(context).size.height*0.06,
          child: ElevatedButton(
              
              onPressed: () {},
              child: Text(
                "Shop Now",
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: themeChange.darkTheme
                        ? Theme.of(context).disabledColor
                        : ColorsConsts.subTitle,
                    fontSize: 30,
                    fontWeight: FontWeight.w600),
              )),
        )
      ],
    );
  }
}
