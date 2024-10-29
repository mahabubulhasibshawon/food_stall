import 'package:flutter/material.dart';
import 'package:food_stall/utils/constants.dart';
import 'package:food_stall/utils/widget_functions.dart';

const PRODUCT_DATA = [
  {
    "image": "pizza.png",
    "name": "Pizza",
    "rest": "Maritine Star Restaurant",
    "rating": "4.5 (164)",
    "price": 20,
    "currency": "\$"
  },
  {
    "image": "burger.png",
    "name": "Burger",
    "rest": "Maritine Star Restaurant",
    "rating": "4.7 (199)",
    "price": 10,
    "currency": "\$"
  },
  {
    "image": "fries.png",
    "name": "Fries",
    "rest": "Maritine Star Restaurant",
    "rating": "4.2 (101)",
    "price": 10,
    "currency": "\$"
  },
  {
    "image": "hotdog.png",
    "name": "HotDog",
    "rest": "Maritine Star Restaurant",
    "rating": "3.9 (150)",
    "price": 15,
    "currency": "\$"
  },
];

const CATEGORIES = [
  {"image": "salad.png", "name": "Salad"},
  {"image": "fastfood.png", "name": "Fast Food"},
  {"image": "desert.png", "name": "Desert"},
  {"image": "drinks.png", "name": "Drinks"},
  {"image": "drinks.png", "name": "Drinks"},
];

class LandingScreen extends StatefulWidget {
  const LandingScreen({super.key});

  @override
  State<LandingScreen> createState() => _LandingScreenState();
}

class _LandingScreenState extends State<LandingScreen> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.sizeOf(context).height * 1;
    final width = MediaQuery.sizeOf(context).width * 1;
    final TextTheme textTheme = Theme.of(context).textTheme;
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: LayoutBuilder(builder: (context, constraints) {
          return Container(
            child: Column(
              children: [
                Expanded(
                  flex: 4,
                  child: Stack(
                    fit: StackFit.expand,
                    children: [
                      Container(
                        color: COLOR_GREEN,
                      ),
                      Image.asset('assets/images/tree_v.png'),
                      Padding(
                        padding: EdgeInsets.all(10),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Row(
                              children: [
                                Container(
                                  width: width * .1,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  child: Padding(
                                    padding: EdgeInsets.all(08),
                                    child:
                                        Image.asset("assets/images/avatar.png"),
                                  ),
                                ),
                                addHorizontalSpace(width * .02),
                                Expanded(
                                    child: Text(
                                  'How Hungry are you Today?',
                                  style: textTheme.titleLarge!
                                      .apply(color: Colors.white),
                                ))
                              ],
                            ),
                            TextField(
                              style: TextStyle(color: Colors.white),
                              decoration: InputDecoration(
                                hintText: 'Search for foods',
                                hintStyle: TextStyle(color: Colors.white),
                                border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
                                prefixIcon: Icon(Icons.search,color: Colors.white,),
                                suffixIcon: Container(
                                  height: 70,
                                  width: 70,
                                  decoration: BoxDecoration(
                                    color: Colors.white24,borderRadius: BorderRadius.only(topRight: Radius.circular(20), bottomRight: Radius.circular(20)),
                                  ),
                                  child: Icon(Icons.menu, color: Colors.white,),
                                ),
                                fillColor: Colors.white24,
                                filled: true,
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  width: constraints.maxWidth,
                  color: Colors.grey.shade200,
                  height: height * .6,
                )
              ],
            ),
          );
        }),
      ),
    );
  }
}
