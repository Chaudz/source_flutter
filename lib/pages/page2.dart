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
                      //() => false đơn giản là một hàm không nhận tham số và luôn trả về false.
                      // Điều này đảm bảo rằng tất cả các màn hình hiện tại sẽ bị loại bỏ,
                      // và chỉ có màn hình mới là /page3 sẽ được giữ lại.
                      // Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context)=> const Page3()), (route) => false)
                      //dòng code này đang được sử dụng để điều hướng
                      // đến màn hình có tên là '/page3'
                      // và loại bỏ tất cả các màn hình khác trên ngăn xếp màn hình cho đến khi gặp màn hình có tên là '/page1'.
                      Navigator.pushNamedAndRemoveUntil(context, '/page3', ModalRoute.withName('/page1'))
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
