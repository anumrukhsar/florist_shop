import 'package:florist_shop/providers/flower_list.dart';
import 'package:florist_shop/screens/dashboard.dart';
import 'package:florist_shop/screens/flower_detail.dart';
import 'package:florist_shop/screens/login.dart';
import 'package:florist_shop/screens/wishlist.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(ChangeNotifierProvider(
      create: (context) => FlowerList(), child: MyApp()));
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      initialRoute: '/',
      // routes: {
      //   '/':(context) => Login(),
      //   '/dashboard': (context) => Dashboard(),
      //   '/wishlist': (context) => Wishlist(),
      // },

      onGenerateRoute: (settings) {
        switch (settings.name) {
          case '/':
            return MaterialPageRoute(builder: (context) => Login());
            break;
          case '/dashboard':
            return MaterialPageRoute(builder: (context) => Dashboard());
            break;
          case '/wishlist':
            return MaterialPageRoute(builder: (context) => Wishlist());
            break;

        }
      },
    );
  }
}
