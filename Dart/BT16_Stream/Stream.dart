/*
Stream
Nếu Future giống như một món ăn, thì Stream giống như xem một kênh Youtube:
Bạn đăng ký kênh (lắng nghe Stream)
Video mới liên tục được đăng tải (Stream phát ra dữ liệu)
Bạn từng xem video khi nó xuất hiện (Xử lý dữ liệu từ Stream)
Kênh có thể đăng tải nhiều video (Stream phát ra nhiều giá trị)

Stream trong Dart là chuỗi các sự kiện theo thời gian, không chỉ một lần như Future.
*/

void viDuStreamDemSo(){
  print("Ví dụ Steam đếm số:");
  //Tạo ra Stream đếm số (Phát ra con số từ 0,5,10,...,100 mỗi giây)
  Stream<int> stream = Stream.periodic(Duration(seconds: 1), (x) => x+1).take(20);
  //Lắng nghe Stream
  stream.listen(
    (x) => print("Nghe được số: ${x*5} - đang chạy trốn!"), //Xử lý mỗi giá trị khi nó xuất hiện
    onDone: () => print("Người bị : bắt đầu đi tìm!"), //Khi Stream kết thúc
    onError: (loi) => print("Có lỗi xảy ra!, ngưng cuộc chơi ($loi)")
  );
}

void main(){
  viDuStreamDemSo();
}