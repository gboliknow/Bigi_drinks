import 'package:flutter_coffe_ui/drink_data.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:smooth_star_rating/smooth_star_rating.dart';

class DrinkDetails extends StatefulWidget {
  final int index;
  DrinkDetails({this.index});

  @override
  _DrinkDetailsState createState() => _DrinkDetailsState();
}

class _DrinkDetailsState extends State<DrinkDetails> {
  var rating = 3.0;
  int quantity = 1;
  bool switchvalue = true;
  bool isFavourite = true;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: DrinkList[widget.index].backgroundColor,
      body: SafeArea(
        child: Container(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 10,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 50,
                      width: 60,
                      child: Image.asset(
                        "assets/images/menu.png",
                      ),
                    ),
                    Container(
                      height: 50,
                      width: 60,
                      child: Image.asset(
                        "assets/images/shopping-cart.png",
                      ),
                    )
                  ],
                ),
              ),
              Expanded(
                child: Stack(
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Container(
                          height: MediaQuery.of(context).size.height * 0.6,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(
                                70,
                              ),
                              topRight: Radius.circular(
                                70,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Positioned(
                      left: 70,
                      top: 20,
                      child: Center(
                        child: Container(
                          height: size.height * 0.35,
                          width: 300,
                          child: Hero(
                            tag: DrinkList[widget.index].image,
                            child: Image.asset(
                              DrinkList[widget.index].image,
                              fit: BoxFit.contain,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Container(
                          padding: EdgeInsets.all(30),
                          height: MediaQuery.of(context).size.height * 0.6,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  IconButton(
                                    onPressed: () =>
                                        Navigator.of(context).pop(),
                                    iconSize: 40,
                                    icon: Icon(
                                      Icons.arrow_back_ios,
                                      color: DrinkList[widget.index]
                                          .backgroundColor,
                                    ),
                                  ),
                                  IconButton(
                                    onPressed: () {
                                      setState(() {
                                        isFavourite = !isFavourite;
                                      });
                                    },
                                    iconSize: 40,
                                    icon: Icon(
                                      isFavourite
                                          ? Icons.favorite
                                          : Icons.favorite_border,
                                      color: DrinkList[widget.index]
                                          .backgroundColor,
                                    ),
                                  ),
                                ],
                              ),
                              Column(
                                children: [
                                  Container(
                                    child: Text(
                                      DrinkList[widget.index].name,
                                      style: TextStyle(
                                        fontWeight: FontWeight.w700,
                                        fontSize: 45,
                                      ),
                                    ),
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      SmoothStarRating(
                                        rating: rating,
                                        isReadOnly: false,
                                        size: 30,
                                        filledIconData: Icons.star,
                                        halfFilledIconData: Icons.star_half,
                                        defaultIconData: Icons.star_border,
                                        starCount: 5,
                                        allowHalfRating: true,
                                        spacing: 2.0,
                                        onRated: (value) {
                                          setState(() {
                                            rating = value;
                                          });
                                        },
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Container(
                                        padding: EdgeInsets.only(top: 10),
                                        child: Text(
                                          rating.toString(),
                                          style: TextStyle(
                                            fontSize: 30,
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Container(
                                    height: 45,
                                    child: Text(
                                      "\N${DrinkList[widget.index].price}",
                                      style: TextStyle(
                                        fontWeight: FontWeight.w700,
                                        fontSize: 40,
                                      ),
                                    ),
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      IconButton(
                                        iconSize: 40,
                                        icon: Icon(
                                          Icons.remove_circle,
                                          color: DrinkList[widget.index]
                                              .backgroundColor,
                                        ),
                                        onPressed: () {
                                          setState(() {
                                            if (quantity > 0) {
                                              quantity -= 1;
                                            }
                                          });
                                        },
                                      ),
                                      Container(
                                        height: 23,
                                        width: 30,
                                        alignment: Alignment.center,
                                        child: Text(
                                          quantity.toString(),
                                          style: TextStyle(
                                            fontSize: 30,
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                      ),
                                      IconButton(
                                        iconSize: 40,
                                        icon: Icon(
                                          Icons.add_circle,
                                          color: DrinkList[widget.index]
                                              .backgroundColor,
                                        ),
                                        onPressed: () {
                                          setState(() {
                                            quantity += 1;
                                          });
                                        },
                                      ),
                                    ],
                                  )
                                ],
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                    height: 30,
                                    child: Text(
                                      "L",
                                      style: TextStyle(
                                        fontWeight: FontWeight.w700,
                                        fontSize: 40,
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  CupertinoSwitch(
                                    trackColor:
                                        DrinkList[widget.index].backgroundColor,
                                    value: switchvalue,
                                    activeColor:
                                        DrinkList[widget.index].backgroundColor,
                                    onChanged: (value) {
                                      setState(() {
                                        switchvalue = value;
                                      });
                                    },
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Container(
                                    height: 30,
                                    child: Text(
                                      "S",
                                      style: TextStyle(
                                        fontWeight: FontWeight.w700,
                                        fontSize: 40,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Container(
                                height: 70,
                                width: MediaQuery.of(context).size.width * 0.5,
                                decoration: BoxDecoration(
                                  color:
                                      DrinkList[widget.index].backgroundColor,
                                  borderRadius: BorderRadius.circular(100),
                                ),
                                child: FlatButton(
                                  onPressed: () {},
                                  child: Container(
                                    padding: EdgeInsets.only(
                                      top: 7,
                                    ),
                                    child: Text(
                                      "Order Now",
                                      style: TextStyle(
                                        fontWeight: FontWeight.w700,
                                        fontSize: 30,
                                      ),
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    )
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
