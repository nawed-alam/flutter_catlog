import 'package:flutter/material.dart';

import '../utils/Routes.dart';
class LoginPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Material(
        color: Colors.white,
        child:SingleChildScrollView(
          child: Column(
            children: [
              Image.asset(
                "assests/images/login_image.png",
                fit: BoxFit.cover,
              ),
              SizedBox(
                height: 20.0,
              ),
              Text(
                "Welcome",
                style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 20.0,
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 32.0, vertical: 16.0),
                child: Column(
                  children: [
                    TextFormField(
                      decoration: InputDecoration(
                        hintText: "Enter user name",
                        labelText: "username",
                      ),
                    ),
                    TextFormField(
                      obscureText: true,
                      decoration: InputDecoration(
                        hintText: "Enter password",
                        labelText: "password",
                      ),
                    ),
                     SizedBox(
                height: 40.0,
              ),
              ElevatedButton(onPressed:(){
                Navigator.pushNamed(context, MyRoutes.homeRoute);
              }, child:Text("Login"),style: TextButton.styleFrom(minimumSize: Size(140, 40)),)
                  ],
                ),
              )
            ],
          ),
        ));
  }
}