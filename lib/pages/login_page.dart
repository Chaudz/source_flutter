import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passController = TextEditingController();

  void login() async{
    String email = emailController.text.trim();
    String pass = passController.text.trim();

    if(email == '' || pass == ''){
      print('please fill all the fields!');
    }
    else{
     try{
       UserCredential userCredential = await FirebaseAuth.instance.signInWithEmailAndPassword(email: email, password: pass);

       if(userCredential.user != null){
         print('đăng nhập');
         Navigator.popUntil(context, (route) => route.isFirst);
         Navigator.pushReplacementNamed(context, '/home');
       }
     } on FirebaseAuthException catch(e){
        print(e.code);
     }
    }

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Login')),
      body: Column(
        children: [
          TextField(
            controller: emailController,
            decoration: InputDecoration(
              labelText: "Enter email",
              border: OutlineInputBorder()
            )
          ),
          SizedBox(
            height: 10
          ),
          TextField(
              controller: passController,
              decoration: InputDecoration(
                  labelText: "Enter pass",
                  border: OutlineInputBorder()
              )
          ),
          SizedBox(
            height: 10
          ),
          ElevatedButton(
              onPressed: ()=>{
                    login()
              },
              child: Text('Login')),
          SizedBox(
            height: 10
          ),
          TextButton(
              onPressed: ()=>{
                Navigator.pushNamed(context, '/register')
              },
              child: Text('Create an Account'))
        ],
      ),
    );
  }
}
