/*
Dart là ngôn ngữ thuần hướng đối tượng, vì vậy ngay cả các hàm cũng là đối tượng và có kiểu Function
Điều này có nghĩa là các hàm có thể được gán cho các biến hoặc truyền làm tham số cho các biến hoặc truyền
làm tham số cho các hàm khác.
Ta cũng có thể gọi một thể hiện (instance) của một lớp Dart như thể nó là một hàm
*/

/*
Hàm là một khối lệnh thực hiện một tác vụ gì có, khối lệnh này được dùng nhiều lần nên gom chúng lại thành 1 hàm
 */

//Viết đầy đủ
double tinhtong(var a, double b,double c){
  return a + b + c;
}

//Sử dụng cú pháp rút gọn "=>"
double tinhtong1(var a, double b,double c) => a + b + c;
// =>expression là cách viết ngắn gọn của {return expression;}
//Lưu ý: Chỉ có biểu thức (expression) đứng đằng sau =>, không áp dụng cho câu lệnh (statement) như if, for, while, v.v.
//Ví dụ Ta không thể để if statement đằng sau => được. Tuy nhiên ta có thể sử dụng toán tử ba ngôi:
// condition ? expr1 : expr2

//Khi gọi 1 hàm (function), ta có thể truyền giá trị thông qua tên biến paramName: value,
String createFullName({String ho="",String chuLot="",String ten=""}){
  return ho+" "+chuLot+" "+ten;
}

//Tham số tùy chọn (có hay không cũng được)
/*
Các tham số tùy chọn trong hàm cho phép ta gọi hàm mà không cần cung cấp đầy đủ tất cả các tham số.
Khi các tham số tùy chọn không được cung cấp, chúng sẽ nhận giá trị null theo mặc định.
Để khai báo cá tham số tùy chọn, ta sử dụng dấu ngoặc vuông []. 
*/

double sum(double a, [double? b, double? c,double? d]){
  var result =a;
  result +=(b!=null)? b : 0;
  result +=(c!=null)? c : 0;
  result +=(d!=null)? d : 0;
  return result;
}

//Hàm ẩn danh
/*
Trong Dart, ta có thể tạo các hàm không có tên gọi là hàm ẩn danh, hay còn gọi là lambda hoặc closure
Chúng thường được sử dụng trong các ngữ cảnh mà ta không cần sử dụng tên hàm, ví dụ như khi truyền hàm như tham số cho hàm khác.

Để tạo hàm ẩn danh, ta có thể sử dụng cú pháp tương tự như khi khai báo hàm có tên,nhưng bỏ qua phần kiểu trả về và tên hàm
*/


//Hàm main(): Khởi đầu ứng dụng
void main(){
  var x = tinhtong(1, 10, 100);
  print(x);

  var y = tinhtong1(1, 100, 100);
  print(y);

  var fn = createFullName(ho: "Phan", chuLot: "Trung", ten: "Hieu");
  print(fn);

  var fn1 = createFullName(ten: "Hieu", ho: "Phan", chuLot: "Trung");
  print(fn1);

  print(sum(10));
  print(sum(10, 20));
  print(sum(10, 20, 30));
  print(sum(10, 20, 30, 40));

  var ham = (var a, var b) {
    return a + b;
  };
  print(ham(5, 10));
}