import 'package:flutter/material.dart';
import 'package:git/models/student.dart';
import 'package:git/pages/page2.dart';
import 'package:git/routes/routes.dart';

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
      //onGenerateRoute là một phương thức trong MaterialApp của Flutter,
      // được sử dụng để định nghĩa một hàm callback mà framework gọi khi
      // cố gắng điều hướng đến một route mà không có route được xác định trước đó. Điều này cung cấp cho bạn khả năng xử lý các trang không xác định trước đó và quyết định làm thế nào để xây dựng và
      // hiển thị chúng
      onGenerateRoute: (settings){
        print('onGenerateRoute is called');
        print('onGenerateRoute is called');
        print(settings.name);
        if(settings.name == '/page2'){
          Student s = settings.arguments as Student;
          print(s?.getAge());
          return MaterialPageRoute(builder: (context)=> Page2(age: s?.getAge(),name: s?.getName(),numberPhone: s?.getNumberPhone(),));
        }
      },
      initialRoute: '/',
      routes: routes,
    );
  }
}

