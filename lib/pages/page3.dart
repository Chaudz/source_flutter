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
                       Navigator.popUntil(context,ModalRoute.withName('/page2'))
                    },
                    child: Text('pop until to page1')
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
