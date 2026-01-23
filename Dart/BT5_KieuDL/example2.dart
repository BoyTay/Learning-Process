/* Chuỗi là tập hợp ký tự UTF-16.
   Trong Dart, chuỗi được biểu diễn bằng kiểu dữ liệu String.
   Chuỗi có thể được khai báo bằng dấu nháy đơn ('...') hoặc dấu nháy kép ("...").
*/

void main(){
  var s1 = ' Phan Trung Hieu';
  var s2 = " Dart Programming Language ";

  //Chèn giá trị của 1 biểu thức, biến vào trong chuỗi : ${...}
  double diemToan = 8.5;
  double diemLy = 7.5;
  var s3 = 'Xin chào $s1, bạn đã đạt tổng điểm là ${diemToan + diemLy}';
  print(s3);

  //Tạo ra chuỗi nằm ở nhiều dòng
  var s4 = '''
      Dòng 1
      Dòng 2
      Dòng 3
    ''';
  var s5 = """
      Dòng 1
      Dòng 2
      Dòng 3
    """;

    var s6= 'Đây là 1 đoạn văn bản \n văn bản!'; 
    print(s6);

    var s7 = r'Đây là 1 đoạn văn bản \n văn bản!'; // raw: văn bản thô kí tự đặc biệt là kí tự thông thường
    print(s7);

    var s8 = "Chuỗi 1 " + "Chuỗi 2"; // nối chuỗi
    print(s8);

    var s9 = 'Chuỗi '
        'này '// nối chuỗi
        'là chuỗi';
    print(s9);

}