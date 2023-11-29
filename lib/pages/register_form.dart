import 'dart:math';

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<RegisterPage> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passController = TextEditingController();
  TextEditingController cpassController = TextEditingController();
  void loginSuccess(){
    Navigator.pop(context);
  }
  void createAccount() async{
    String email = emailController.text.trim();
    String pass = passController.text.trim();
    String cPass = cpassController.text.trim();

    if(email == '' || pass == '' || cPass ==''){
      print('Please fill all the details!');
    }else if(pass != cPass){
      print('Password is not match');
    }else{
     try{
       UserCredential userCredential = await FirebaseAuth.instance.createUserWithEmailAndPassword(
           email: email,
           password: pass);

       if(userCredential.user != null){
          print('created');
          Navigator.pop(context);
       }

     } on FirebaseAuthException catch(e){
       print(e.code.toString());
     }
    }
    print('$email $pass $cPass');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('create account')),
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(10),
          child: Column(
            children: [
              TextField(
                controller: emailController,
                decoration: InputDecoration(
                  labelText: "Enter email",
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(
                  height: 10
              ),
              TextField(
                  controller: passController,
                  decoration: InputDecoration(
                    labelText: "Enter password",
                    border: OutlineInputBorder(),
                  )
              ),
              SizedBox(height: 20),
              TextField(
                  controller: cpassController,
                  decoration: InputDecoration(
                    labelText: "confirm password",
                    border: OutlineInputBorder(),
                  )
              ),
              SizedBox(height: 20),
              ElevatedButton(
                  onPressed: ()=>{
                    createAccount()
                  },
                  child: Text('Create'))
            ],
          ),
        )
      )
    );
  }
}
