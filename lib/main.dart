import 'package:flutter/material.dart';
import 'package:homepage_islamic/Screen/bottom_app_bar.dart';
import 'package:homepage_islamic/model/daily_list.dart';
import 'package:homepage_islamic/model/discount_list.dart';
import 'package:homepage_islamic/model/product_list.dart';
import 'package:homepage_islamic/model/recently_list.dart';
import 'package:homepage_islamic/model/top_rated_list.dart';
import 'package:homepage_islamic/model/trending_list.dart';

import 'package:provider/provider.dart';

import 'component/Recently_Offers.dart';
import 'model/top_selling_list.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider.value(value: Dummy_Product()),
        ChangeNotifierProvider.value(value: Dummy_Product1()),
        ChangeNotifierProvider.value(value: Dummy_Product2()),
        ChangeNotifierProvider.value(value: Dummy_Product3()),
        ChangeNotifierProvider.value(value: trending_Product3()),
        ChangeNotifierProvider.value(value: recently_Product3()),
        ChangeNotifierProvider.value(value: Toprated_Product1()),
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
            // This is the theme of your application.
            //
            // Try running your application with "flutter run". You'll see the
            // application has a blue toolbar. Then, without quitting the app, try
            // changing the primarySwatch below to Colors.green and then invoke
            // "hot reload" (press "r" in the console where you ran "flutter run",
            // or simply save your changes to "hot reload" in a Flutter IDE).
            // Notice that the counter didn't reset back to zero; the application
            // is not restarted.
            primarySwatch: Colors.amber,
            elevatedButtonTheme: ElevatedButtonThemeData(
                style: ElevatedButton.styleFrom(primary: Colors.amber))),
        home: Buttom_NavBar(),
      ),
    );
  }
}
