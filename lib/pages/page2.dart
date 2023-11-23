import 'package:flutter/material.dart';

class Page2 extends StatelessWidget {
  const Page2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("Page2")),
        body: Center(
            child: Column(
              children: [
                ElevatedButton(
                    onPressed: ()=>{
                      Navigator.pushNamed(context, '/page3')
                    },
                    child: Text('page3')
                ),
                ElevatedButton(
                    onPressed: ()=>{

                    },
                    child: Text('page3')
                )
              ],
            )
        )
    );
  }
}
