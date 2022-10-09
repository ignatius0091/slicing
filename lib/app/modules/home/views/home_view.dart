import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:getwidget/getwidget.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 35, right: 35),
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text(
                              'Your location',
                              style: TextStyle(
                                fontSize: 16,
                                color: Color(0xff192252),
                                fontWeight: FontWeight.w300,
                              ),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Icon(
                              Icons.keyboard_arrow_down_sharp,
                              color: Color(0xff192252).withOpacity(.5),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          'California, USA',
                          style: TextStyle(
                            fontSize: 26,
                            color: Color(0xff192252),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.search,
                            color: Color(0xff192252).withOpacity(.8),
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.notifications_outlined,
                              color: Color(0xff192252).withOpacity(.8),
                            ))
                      ],
                    )
                  ],
                ),
                SizedBox(
                  height: 25,
                ),
                GFImageOverlay(
                  image: AssetImage('assets/carOne.jpeg'),
                  height: 220,
                  borderRadius: BorderRadius.circular(20),
                  boxFit: BoxFit.cover,
                  colorFilter: ColorFilter.mode(Colors.black.withOpacity(0.3), BlendMode.lighten),
                ),
                SizedBox(
                  height: 15,
                ),
                Text(
                  'New year 2022 25% off promo',
                  style: TextStyle(
                    fontSize: 22,
                    color: Color(0xff192252),
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Divider(thickness: 3),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Top vehicle',
                      style: TextStyle(
                        fontSize: 18,
                        color: Color(0xff192252),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      'See all',
                      style: TextStyle(
                        fontSize: 16,
                        color: Color(0xff192252),
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                SizedBox(
                  height: 170,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    itemCount: 5,
                    itemBuilder: (BuildContext context, int index) => Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          GFImageOverlay(
                            height: 100,
                            width: 200,
                            image: AssetImage('assets/carTwo.jpeg'),
                            boxFit: BoxFit.cover,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 7),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Tesla model 3 - 2021",
                                  style: TextStyle(
                                    fontSize: 16,
                                    color: Color(0xff192252),
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text(
                                  "Rating",
                                  style: TextStyle(
                                    fontSize: 14,
                                    color: Color(0xff192252),
                                    fontWeight: FontWeight.w300,
                                  ),
                                ),
                                Text(
                                  "Rp.500.000 / Day",
                                  style: TextStyle(
                                    fontSize: 16,
                                    color: Color(0xff192252),
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Color(0xff192252),
        //Floating action button on Scaffold
        onPressed: () {
          //code to execute on button press
        },
        child: Icon(Icons.add), //icon inside button
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        //bottom navigation bar on scaffold
        color: Colors.transparent,
        elevation: 0,
        shape: CircularNotchedRectangle(), //shape of notch
        notchMargin: 5, //notche margin between floating button and bottom appbar
        child: Row(
          //children inside bottom appbar
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            IconButton(
              icon: Icon(
                Icons.home,
                color: Color(0xff192252),
              ),
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(
                Icons.car_rental_outlined,
                color: Color(0xff192252),
              ),
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(
                Icons.message_sharp,
                color: Color(0xff192252),
              ),
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(
                Icons.person,
                color: Color(0xff192252),
              ),
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}
