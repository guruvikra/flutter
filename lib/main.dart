import "package:flutter/material.dart";
import "package:practice/pages/homepage.dart";
import "package:practice/pages/loginpage.dart";
import "package:practice/utils/routes.dart";



void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

    @override
  Widget build(BuildContext context) {
    return MaterialApp (
      // home: Container(
      //   child: Text("hello"),
      // ),
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.blueGrey,
      // primaryTextTheme: Typography.whiteRedwoodCity
      ),
      routes: {
        MyRoutes.login:(context)=>const LoginPage(),
        MyRoutes.home:(context)=>const HomePage(),
      },
    );
  }
}