import 'package:flutter/material.dart';
import 'package:git/pages/home_page.dart';
import 'package:git/pages/page4.dart';

class Page3 extends StatelessWidget {
  const Page3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("Page3")),
        body: Center(
            child: Column(
              children: [
                ElevatedButton(
                    onPressed: ()=>{
                        Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context)=> const HomePage()), (route) => false)
                    },
                    child: Text('homepage')
                ),
                ElevatedButton(
                    onPressed: ()=>{
                      Navigator.of(context).pushNamedAndRemoveUntil('/page2', ModalRoute.withName('/page2'))
                    },
                    child: Text('page2')
                )
              ],
            )
        )
    );
  }
}
