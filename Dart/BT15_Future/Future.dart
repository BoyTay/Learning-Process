import "dart:async";

/*
  Future
  Hãy tưởng tượng bạn gọi món ăn tại nhà hàng:
  + Bạn đặt món (gọi một hàm)
  + Nhân viên phục vụ nói "vâng", tôi sẽ mang món ăn đến sau (hàm trả về một Future)
  + Bạn có thể làm việc khác trong lúc chờ đợi (tiếp tục chạy code)
  Khi món ăn được phục vụ (Future hoàn thành), bạn có thể thưởng thức nó (sử dụng kết quả của Future).

  Từ khóa Async:
  - Khi thêm từ khóa async vào một hàm, bạn đang nói với Dart: "Hàm này sẽ chứa code bất đồng bộ"
  - Một hàm được đánh dấu async sẽ luôn luôn trả về 1 Future (ngay cả khi bạn không khai báo nó)
*/

Future<String> layTen() async{
  return "Phan Trung Hieu";
}

/*
  Từ khóa Await:
  - await chỉ có thể được sử dụng bên trong một hàm async
  Khi bạn đặt await trước một Future, Dart sẽ:
  - Tạm dừng thực thi hàm tại dòng đó
  - Đợi Future hoàn thành
  - Trả về giá trị từ Future (không còn đóng gói trong Future nữa)
  - Tiếp tục thực thi những dòng code còn lại

  await biến đổi Future<T> thành giá trị T, giúp code dễ đọc hơn
*/

//Ham tra ve Future
Future<String> taiDuLieu(){
  return Future.delayed(Duration(seconds: 2), () => "Dữ liệu đã được tải");
}

//Gọi hàm cách 1
void hamChinh1(){
  print("Bắt đầu tải dữ liệu...");
  Future<String> f = taiDuLieu();
  f.then((ketQua){
    print("Kết quả: $ketQua");
  });
  print("Tiếp tục công việc khác.");
}

//Gọi hàm cách 2
void hamChinh2() async{
  print("Bắt đầu tải dữ liệu...");
  String ketQua = await taiDuLieu();
  print("Kết quả: $ketQua");
  print("Tiếp tục công việc khác.");
}

void main(){
  //hamChinh1();
  hamChinh2();
}


