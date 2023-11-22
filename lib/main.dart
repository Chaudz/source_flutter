import 'package:flutter/material.dart';
import 'package:git/pages/homepage.dart';
import 'package:git/pages/intropage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const IntroPage(),
      routes: {
        '/homepage': (context) => const HomePage(),
        'intropage': (context) => const IntroPage()
      },
    );
  }
}


class FirstPage extends StatelessWidget {
  const FirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("first page")),
      body: Center(
        child: Column(
          children: [
            Text("This is first page"),
            ElevatedButton(
                onPressed: ()=>{
                  Navigator.push(context,MaterialPageRoute(builder: (context)=> const SecondPage()) )
                },
                child: Text("Next page"))
          ],
        )
      ),
    );
  }
}

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(title: Text("second page")),
      body: Center(
        child: Column(
          children: [
            Text('This is second page'),
            ElevatedButton(onPressed: ()=>{
              Navigator.pop(context)
            }, child: Text("dfsa"))
          ],
        ),
      )
    );
  }
}

