
// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:practice/utils/routes.dart';


class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar:AppBar(
        title: const Text("Login Page",style: TextStyle(
          color: Colors.white),
          ), 

        backgroundColor: const Color.fromARGB(255, 97, 37, 238),
      ),
      body: SingleChildScrollView(
        child: Column(
        
          children: [
            Image.asset("assets/images/login.png",),
            // const SizedBox(height: 10,),
            const Text("Login"),
            // const SizedBox(height: 10,),
            Padding(padding: EdgeInsets.symmetric(vertical: 16,horizontal: 32),
            child: Column(
              children: [
                TextFormField(
                  decoration: InputDecoration(
                    label: Text("Username"),
                  ),
                ),
                TextFormField(
                  obscureText: true,
                  decoration: InputDecoration(
                    label: Text("password"),
                  ),
                ),
                SizedBox(height: 20,),
                ElevatedButton(onPressed: (){
                Navigator.pushNamed(context, MyRoutes.home);

            },
            style: TextButton.styleFrom(backgroundColor: Colors.black12), child:const Text("Login"),
            )
              ],
            ),
            
            ),
            

            
          ]
        ),
      ),
    );
  }
}