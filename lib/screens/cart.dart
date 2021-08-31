import 'package:bottom_bar/consts/color.dart';
import 'package:bottom_bar/widget/cart_empty.dart';
import 'package:bottom_bar/widget/cart_full.dart';
import 'package:flutter/material.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List products = [];
    return !products.isEmpty
        ? Scaffold(
            body: CartEmpty(),
          )
        : Scaffold(
            bottomSheet: checkOutSection(context),
            appBar: AppBar(
              title: Text("Cart Item Count"),
              actions: [IconButton(onPressed: () {}, icon: Icon(Icons.delete))],
            ),
            body: Container(
              margin: EdgeInsets.only(bottom: 60),
              child: ListView.builder(itemCount: 5,itemBuilder: (context ,index)
              {
               return CartFull();
              },
                      ),
            ));
  }

  Widget checkOutSection(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          border: Border(top: BorderSide(color: Colors.grey, width: 0.5))),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
        
          children: [
            Expanded(
              flex: 2,
              child: Container(
                 decoration: BoxDecoration(
                                       borderRadius: BorderRadius.circular(30),

                            gradient: LinearGradient(colors: [
                              ColorsConsts.gradiendLStart,
                              ColorsConsts.gradiendLEnd,
                            ], stops: [
                              0.0,
                              0.7
                            ]),
                          ),
                child: Material(
                  borderRadius: BorderRadius.circular(30),
                  color: Colors.transparent,
                  child: InkWell(
                    onTap: () {},
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "CheckOut",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Theme.of(context).textSelectionColor,
                            fontSize: 18,
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Spacer(),
            Text(
                      "Total",
                      
                      style: TextStyle(
                          color: Theme.of(context).textSelectionColor,
                          fontSize: 18,
                          fontWeight: FontWeight.w600),
                    ),
                    Text(
                      "US \$2322.0",
                    
                      style: TextStyle(
                          color: Colors.blue,
                          fontSize: 18,
                          fontWeight: FontWeight.w600),
                    )
          ],
        ),
      ),
    );
  }
}
