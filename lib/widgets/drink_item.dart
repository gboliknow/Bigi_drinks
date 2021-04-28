import 'package:flutter_coffe_ui/drink_data.dart';
import 'package:flutter_coffe_ui/views/drink_details.dart';
import 'package:flutter/material.dart';

class DrinkItem extends StatelessWidget {
  final int index;

  DrinkItem({this.index});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => DrinkDetails(
            index: index,
          ),
        ),
      ),
      child: Container(
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: DrinkList[index].backgroundColor,
          borderRadius: BorderRadius.circular(50),
        ),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: Text(
                    DrinkList[index].name,
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w700,
                      fontSize: 18,
                    ),
                  ),
                ),
                Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    gradient: new LinearGradient(
                      colors: [
                        Colors.black12,
                        DrinkList[index].backgroundColor,
                      ],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                    ),
                  ),
                  child: IconButton(
                    icon: Icon(
                      Icons.add,
                      color: Colors.white,
                    ),
                    onPressed: () => () {},
                  ),
                ),
              ],
            ),
            Expanded(
              child: Hero(
                tag: DrinkList[index].image,
                child: Center(
                  child: Image.asset(
                    DrinkList[index].image,
                    fit: BoxFit.fitWidth,
                    height: DrinkList[index].width,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
