import 'package:flutter/material.dart';

class Page4 extends StatelessWidget {
  const Page4({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("Page4")),
        body: Center(
            child: Column(
              children: [
                ElevatedButton(
                    onPressed: ()=>{

                    },
                    child: Text('page5')
                ),
                ElevatedButton(
                    onPressed: ()=>{

                    },
                    child: Text('page5')
                )
              ],
            )
        )
    );
  }
}
