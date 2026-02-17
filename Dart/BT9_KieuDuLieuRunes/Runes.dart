void main(){
  //Định nghĩa
  // - Runes là tập hợp các điểm mã Unicode của một chuỗi
  // - Dùng để xử lý các ký tự Unicode đặc biệt như emoji, ký tự đa byte, v.v.
  // - Mỗi ký tự Unicode được biễu diễn bằng một số nguyên

  //Cách khai báo:
  String str = 'Hello';
  Runes runes1 = str.runes;

  Runes runes2 = Runes('\u2665');

  Runes runes3 = Runes('\u{1F600}');

  print(runes2);
  print(runes3);

  // Các phương thức và thuộc tính của Runes
  //1. Chuyển đổi Runes thành String
  String heartSymbol = String.fromCharCodes(runes2);
  print(heartSymbol); // Output: ♥
  //Từ mã Unicode sang String
  String emoji = String.fromCharCode(0x1F600);
  print(emoji); // Output: 😀

  String symbol = String.fromCharCode(0x2665);
  print(symbol); // Output: ♥

  //2. Xử lý
  print(runes1.length); // Số lượng điểm mã
  print(runes1.first); // Điểm mã đầu tiên
  print(runes1.last); // Điểm mã cuối cùng

  //Duyệt qua từng điểm mã
  runes1 = 'Xin chào, tôi rất yêu bạn'.runes;
  runes1.forEach((int rune) {
    print('Unicode: $rune, Ký tự: ${String.fromCharCode(rune)}'); // In ra điểm mã của từng ký tự
  });

  //Kiểm tra
  print(runes1.isEmpty); // Kiểm tra nếu Runes rỗng
  print(runes1.isNotEmpty); // Kiểm tra nếu Runes không rỗng
}