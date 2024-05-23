
// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:practice/utils/routes.dart';


final _formkey=GlobalKey<FormState>();

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  var name="";
  var changebbutton=false;
  


  movetoHome(BuildContext context) async{
    if(_formkey.currentState!.validate()){
      setState(() {
      changebbutton=true;
      });
      await Future.delayed(const Duration(seconds: 1));
      // ignore: use_build_context_synchronously
      await Navigator.pushNamed(context, MyRoutes.home);
      setState(() {
        changebbutton=false;
      });
    }
  }

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
        child: Form(
          key: _formkey,
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
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Please enter a username';
                      }
                      return null;
                    },
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
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Please enter a password';
                      }
                      else if(value.length < 6){
                        return 'Password must be at least 6 characters';

                      }
                      return null;
                    },
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
          
                  Material(
                    color: Colors.deepPurple,
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                    child: InkWell(
                      onTap: () =>movetoHome(context),
                      child: AnimatedContainer(
                        duration: Duration(seconds: 1),
                        height: 50,
                        width:changebbutton? 50:150,
                        alignment: Alignment.center,
                        
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
                  ),
                ],
              ), 
              ),            
            ]
          ),
        ),
      ),
    );
  }
}