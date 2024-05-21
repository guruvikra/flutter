
// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:practice/utils/routes.dart';


class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  var name="";
  var changebbutton=false;
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

            Text(
              "Login $name",
              style: TextStyle(fontSize: 25),
              ),
            // const SizedBox(height: 10,),

            Padding(padding: EdgeInsets.symmetric(vertical: 16,horizontal: 32),
            child: Column(
              children: [

                TextFormField(
                  decoration: InputDecoration(
                    label: Text("Username"),
                  ),
                  onChanged:(value) {
                    name = value;
                    setState(() {
                    });
                  },
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
                ),
                SizedBox(height: 20,),

                InkWell(
                  onTap: () async {
                    setState(() {
                      changebbutton=true;
                    });
                    await Future.delayed(const Duration(seconds: 1));
                    Navigator.pushNamed(context, MyRoutes.home);

                    
                  },
                  child: AnimatedContainer(
                    duration: Duration(seconds: 1),
                    height: 50,
                    width: changebbutton ?50: 150,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: Colors.blueAccent,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Text(
                      "Login",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                      ),  
                    ),
                  ),
                ),
              ],
            ), 
            ),            
          ]
        ),
      ),
    );
  }
}