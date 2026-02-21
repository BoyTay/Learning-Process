import 'package:flutter/material.dart';

class MyText extends StatelessWidget {
  const MyText({super.key});

  @override
  Widget build(BuildContext context) {
    //Trả về Scaffold - widget cung cấp bố cục Material Design có bố cục
    //Màn hình
    return Scaffold(
      //Tiêu đề của ứng dụng
      appBar: AppBar(
        //Tiêu đề
        title: Text("App 02"),
        //Màu nền
        backgroundColor: Colors.blue,
        //Độ bóng của AppBar
        elevation: 4,
        actions: [
          IconButton(
            onPressed: () {
              print("b1");
            },
            icon: Icon(Icons.search),
          ),
          IconButton(
            onPressed: () {
              print("b2");
            },
            icon: Icon(Icons.abc),
          ),
          IconButton(
            onPressed: () {
              print("b3");
            },
            icon: Icon(Icons.more_vert),
          ),
        ],
      ),
      //backgroundColor: Colors.yellow,
      body: Center(child: Column(
        children: [
          //Tạo một khoảng cách
          const SizedBox(height: 50,),
        //Text cơ bản
        const Text("Phan Trung Hieu"),
          const SizedBox(height: 20,),
          const Text(
            "Xin chao cac ban dang hoc lap trinh Flutter!",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
              color: Colors.blue,
              letterSpacing: 1.5,
            ),
          ),
          const SizedBox(height: 20,),
          const Text(
            "Flutter SDK là bộ công cụ phát triển phần mềm mã nguồn mở của Google, cho phép bạn xây dựng các ứng dụng đa nền tảng (iOS, Android, Web, Desktop) chỉ từ một cơ sở mã duy nhất (single codebase)",
            textAlign: TextAlign.center,
            maxLines: 2,// Số dòng tối đa
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
              fontSize: 20,
              color: Colors.black,
              letterSpacing: 1.5,
            ),
          ),
        ]
      )),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          print("Pressed");
        },
        child: const Icon(Icons.add_ic_call),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Trang chủ"),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: "Tìm kiếm"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Cá nhân"),
        ],
      ),
    );
  }
}
