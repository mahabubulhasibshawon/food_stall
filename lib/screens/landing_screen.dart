import 'package:flutter/material.dart';
import 'package:food_stall/screens/product_item.dart';
import 'package:food_stall/screens/product_page.dart';
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
  final FocusNode _focusNode = FocusNode();

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _focusNode.unfocus();
  }

  @override
  Widget build(BuildContext context) {
    // final height = MediaQuery.sizeOf(context).height * 1;
    // final width = MediaQuery.sizeOf(context).width * 1;
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
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  width: 70,
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
                                addHorizontalSpace(20),
                                Expanded(
                                  flex: 7,
                                    child: Text(
                                  'How Hungry are you Today?',
                                  style: textTheme.headlineMedium!
                                      .apply(color: Colors.white),
                                ))
                              ],
                            ),
                            TextField(
                              focusNode: _focusNode,
                              cursorColor: Colors.white,
                              cursorRadius: Radius.circular(10),
                              style: TextStyle(color: Colors.white),
                              decoration: InputDecoration(
                                hintText: 'Search for foods',
                                hintStyle: TextStyle(color: Colors.white),
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(20),
                                borderSide: BorderSide.none),
                                prefixIcon: Icon(
                                  Icons.search,
                                  color: Colors.white,
                                ),
                                suffixIcon: Container(
                                  height: 70,
                                  width: 70,
                                  decoration: BoxDecoration(
                                    color: Colors.white24,
                                    borderRadius: BorderRadius.only(
                                        topRight: Radius.circular(20),
                                        bottomRight: Radius.circular(20)),
                                  ),
                                  child: Icon(
                                    Icons.menu,
                                    color: Colors.white,
                                  ),
                                ),
                                fillColor: Colors.white24,
                                filled: true,
                              ),
                            ),
                            addVerticalSpace(10),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  width: constraints.maxWidth,
                  color: Colors.grey.shade200,
                  // height: height * .6,
                  child: Padding(
                    padding: EdgeInsets.only(left: 10, bottom: 10),
                    child: Stack(
                      clipBehavior: Clip.none,
                      children: [
                        Column(
                          children: [
                            addVerticalSpace(constraints.maxWidth * .35),
                            Row(
                              children: [
                                Text(
                                  'Popular Foods',
                                  style: textTheme.headlineMedium,
                                ),
                                Expanded(child: Center()),
                                Text(
                                  'View All > ',
                                  style: textTheme.bodySmall!
                                      .apply(color: COLOR_ORANGE),
                                ),
                                addHorizontalSpace(10)
                              ],
                            ),
                            addVerticalSpace(10),
                            SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              physics: BouncingScrollPhysics(),
                              child: Row(
                                children:
                                  PRODUCT_DATA.map((data) => InkWell(
                                    onTap: (){
                                      _focusNode.unfocus();
                                      Navigator.of(context).push(MaterialPageRoute(builder: (context) => ProductPage(productData: data)));
                                    },
                                    child: ProductItem(
                                      width: constraints.maxWidth * 0.59,
                                      productData: data
                                    ),
                                  )).toList()
                              ),
                            )
                          ],
                        ),
                        Positioned(
                          top: -40,
                          left: 0,
                          child: Container(
                            width: constraints.maxWidth,
                            height: constraints.maxWidth * .35,
                            child: ListView(
                              scrollDirection: Axis.horizontal,
                              physics: BouncingScrollPhysics(),
                              children:
                                CATEGORIES.map((category) => Container(
                                      margin: EdgeInsets.only(right: 10),
                                      width: constraints.maxWidth * .25,
                                      decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius:
                                              BorderRadius.circular(20)),
                                      child: Padding(
                                        padding: EdgeInsets.all(10),
                                        child: Column(
                                          children: [
                                            Image.asset(
                                                "assets/images/${category['image']}"),
                                            addVerticalSpace(10),
                                            Text(
                                              "${category['name']}",
                                              style: textTheme.bodySmall!
                                                  .apply(color: COLOR_BLACK),
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                ).toList(),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          );
        }),
      ),
    );
  }
}
