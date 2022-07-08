import 'package:flutter/material.dart';
import 'package:homepage_islamic/component/Daily_Offers.dart';
import 'package:homepage_islamic/component/Product_Offers.dart';
import 'package:homepage_islamic/component/Recently_Offers.dart';
import 'package:homepage_islamic/component/Top_Rated_Offers.dart';
import 'package:homepage_islamic/component/image_slide_show.dart';
import 'package:homepage_islamic/component/top_selling_offer.dart';
import 'package:homepage_islamic/component/treading_selling_offer.dart';
import 'package:homepage_islamic/model/daily_list.dart';
import 'package:homepage_islamic/model/discount_list.dart';
import 'package:homepage_islamic/model/product_list.dart';
import 'package:homepage_islamic/nav_drawer/nav_drawer.dart';

import 'package:provider/provider.dart';

import '../component/Category_Offers.dart';
import '../component/Discount.dart';
import '../model/top_selling_list.dart';

class Home_Page extends StatelessWidget {
  Home_Page({Key? key}) : super(key: key);

  GlobalKey<ScaffoldState> _scafoldKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    final productsData = Provider.of<Dummy_Product>(context);
    final DailyData = Provider.of<Dummy_Product1>(context);
    final DiscountData = Provider.of<Dummy_Product2>(context);

    final products = productsData.items;
    final dailyData = DailyData.items1;
    final discounData = DiscountData.items2;
    return Scaffold(
      key: _scafoldKey,
      backgroundColor: Color(0xFFEEEEEE),
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(120),
        child: AppBar(
          backgroundColor: Colors.orangeAccent,
          leading: IconButton(
            onPressed: () {
              _scafoldKey.currentState!.openDrawer();
              //Drawer(child: MyDrawer());
            },
            icon: Icon(
              Icons.menu,
              color: Colors.white,
              size: 30,
            ),
          ),
          actions: [
            IconButton(
              onPressed: () {
                // Scaffold.of(context).openDrawer();
                //scaffoldKey.currentState?.openDrawer();
              },
              icon: Icon(
                Icons.notifications,
                color: Colors.white,
                size: 30,
              ),
            ),
          ],
          bottom: PreferredSize(
            preferredSize: Size.fromHeight(90),
            child: Padding(
              padding: const EdgeInsets.only(bottom: 20, left: 10, right: 10),
              child: Container(
                height: 40,
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'Search here',
                    prefixIcon: Icon(Icons.search),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide.none),
                    contentPadding: EdgeInsets.zero,
                    filled: true,
                    fillColor: Colors.white,
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
      drawer: MyDrawer(),
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.symmetric(
            horizontal: 15,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                height: 130,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    image: DecorationImage(
                        image: AssetImage("assets/image 133.png"),
                        fit: BoxFit.contain)),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    // margin: EdgeInsets.symmetric(horizontal: 10),
                    height: 65,
                    width: 170,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(3),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 1,
                            blurRadius: 2,
                            offset: Offset(0, 1),
                          )
                        ],
                        image: DecorationImage(
                            image: AssetImage(
                              "assets/image 134.png",
                            ),
                            fit: BoxFit.cover)),
                  ),
                  Container(
                    //  margin: EdgeInsets.symmetric(horizontal: 10),
                    height: 65,
                    width: 170,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(3),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 1,
                            blurRadius: 2,
                            offset: Offset(0, 1),
                          )
                        ],
                        image: DecorationImage(
                            image: AssetImage("assets/image 135.png"),
                            fit: BoxFit.cover)),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Center(
                child: Text(
                  "Categories",
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.black,
                  ),
                ),
              ),
              Category_offer(),
              ImageSlideShowCustom(),
              SizedBox(
                height: 10,
              ),
              Center(
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Text(
                    "Popular Products",
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
              Container(
                height: 300,
                child: GridView.builder(
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        childAspectRatio: 3 / 3.5,
                        crossAxisSpacing: 15,
                        mainAxisSpacing: 10),
                    itemCount: products.length,
                    itemBuilder: (context, index) =>
                        ChangeNotifierProvider.value(
                          value: products[index],
                          child: ProductOffer(),
                        )),
              ),
              Row(
               // crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  TextButton(onPressed:(){}, child: Text("See All →",style: TextStyle(
                  fontSize: 14,color: Colors.black
              ),),
                style: ButtonStyle(
                  //padding: MaterialStateProperty.all<EdgeInsets>(EdgeInsets.all(15)),
                  foregroundColor: MaterialStateProperty.all<Color>(Colors.black),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5.0),
                      side: BorderSide(color: Colors.black)
                    ),
                  ),),
                ),
        ],
              ),

              Center(
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Text(
                    "Daily Best Sells",
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
              Container(
                height: 300,
                child: GridView.builder(
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        childAspectRatio: 3 / 3.5,
                        crossAxisSpacing: 15,
                        mainAxisSpacing: 10),
                    itemCount: dailyData.length,
                    itemBuilder: (context, index) =>
                        ChangeNotifierProvider.value(
                          value: dailyData[index],
                          child: DailyOffer(),
                        )),
              ),
              Center(
                child: Container(
                  margin: EdgeInsets.symmetric(vertical: 10),
                  child: Text(
                    "Latest Discounted Products",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
              Container(
                height: 200,
                child: Row(
                  children: [
                    Stack(
                      children:[
                        Container(
                          width: MediaQuery.of(context).size.width / 2.6,
                          child: Image.asset(
                            "assets/image 158.png",
                            fit: BoxFit.cover,
                          ),
                        ),

                         Positioned(
                           top: 10,
                             left: 5,
                             child: Text("Bring Hala Products\n into your Home",)),

                        Positioned(
                           top: 55,
                            left: 10,
                            child: ElevatedButton(
                              onPressed: (){},
                              child: Text('Shop Now ->',style: TextStyle(
                                color: Colors.white
                              ),),
                            ))
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width / 2,
                      child: GridView.builder(
                          scrollDirection: Axis.horizontal,
                          gridDelegate:
                              SliverGridDelegateWithMaxCrossAxisExtent(
                                  maxCrossAxisExtent: 200,
                                  childAspectRatio: 3 / 2.6,
                                  crossAxisSpacing: 15,
                                  mainAxisSpacing: 10),
                          itemCount: discounData.length,
                          itemBuilder: (context, index) =>
                              ChangeNotifierProvider.value(
                                value: discounData[index],
                                child: Discount_product(),
                              )),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("Top Selling",style: TextStyle(fontWeight: FontWeight.bold),),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Container(
                    width: 120,
                    height: 5,
                    color: Colors.green,
                  ),
                  Container(
                    width: 80,
                    height: 5,
                    color: Colors.grey[300],
                  ),

                ],
              ),

              FittedBox(
                child: Container(
                  height: MediaQuery.of(context).size.height * .2,
                  width: MediaQuery.of(context).size.width,
                  child: TopSelling_Offer(),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("Trending Product",style: TextStyle(fontWeight: FontWeight.bold),),
              ),
              SizedBox(
                height: 10,
              ),

              Row(
                children: [
                  Container(
                    width: 120,
                    height: 5,
                    color: Colors.green,
                  ),
                  Container(
                    width: 80,
                    height: 5,
                    color: Colors.grey[300],
                  ),

                ],
              ),

              FittedBox(
                child: Container(
                  height: MediaQuery.of(context).size.height * .2,
                  width: MediaQuery.of(context).size.width,
                  child: TreadingSellingOffer(),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("Recently Added",style: TextStyle(fontWeight: FontWeight.bold),),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Container(
                    width: 120,
                    height: 5,
                    color: Colors.green,
                  ),
                  Container(
                    width: 80,
                    height: 5,
                    color: Colors.grey[300],
                  ),

                ],
              ),
              SizedBox(
                height: 10,
              ),
              FittedBox(
                child: Container(
                  height: MediaQuery.of(context).size.height * .2,
                  width: MediaQuery.of(context).size.width,
                  child: Recently_offers(),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("Top Rated",style: TextStyle(fontWeight: FontWeight.bold),),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Container(
                    width: 120,
                    height: 5,
                    color: Colors.green,
                  ),
                  Container(
                    width: 80,
                    height: 5,
                    color: Colors.grey[300],
                  ),

                ],
              ),

              FittedBox(
                child: Container(
                  height: MediaQuery.of(context).size.height * .2,
                  width: MediaQuery.of(context).size.width,
                  child: TopRated_offers(),
                ),
              ),
              SizedBox(
                height: 2 ,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
