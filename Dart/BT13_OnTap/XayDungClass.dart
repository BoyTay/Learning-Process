import 'dart:math';

class Point {
  double x, y;

  Point(this.x, this.y);
  double distanceTo(Point other) {
    var dx = x - other.x;
    var dy = y - other.y;
    return sqrt(dx * dx + dy * dy);
  }
}

//-------------------------------------
class Point2 {
  double? x; // Thuộc tính instance x ban đầu mặc định là null
  double z = 0; // Thuộc tính instance z được khởi tạo với giá trị mặc định 0
}

//-------------------------------------
double X_ = 1.5;

class Point3 {
  double? x = X_; // Có thể truy cập khai báo không phụ thuộc this

  double? y;
  late double? z = this.x;

  Point3(this.x, this.y, this.z);
}

//-------------------------------------
/*
Phương thức getters và setters là các phương thức đặt biệt cung cấp quyền truy cập đọc và ghi vào các thuộc tính của đối tượng
.Ta có thể tạo thêm các thuộc tính bằng cách triển khai getters và setters để thông qua các từ khóa get và set
*/
class Rectangle {
  double left, top, width, height;
  late double _z;

  Rectangle(this.left, this.top, this.width, this.height);

  double get z => _z;
  set z(double value) => _z=value;

  @override
  String toString() {
    return left.toString() + " " + top.toString() + " " + width.toString() + " " + height.toString();
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! Rectangle) return false;
    return left == other.left && 
    top == other.top && 
    width == other.width && 
    height == other.height;
  }
}

//-------------------------------
/*
Thuộc tín và phương thức static
Trong Dart, thuộc tính và phươn thức tĩnh (static) được sử dụng để chia sẻ dữ liệu và chức năng giữa tất cả các đối tượng của một lớp.
Điều này có nghĩa là ta không cần phải tạo ra một đối tượng để truy cập vào các thuộc tính hoặc phương thức này.
*/

class MyMath {
  static const  double pi = 3.14159;

  static double square(double x){
    return x*x;
  }
}
void main() {
  //Khoi tao doi tuong
  Point p1 = Point(0, 0);
  var p2 = Point(3, 3);

  double d = p1.distanceTo(p2);
  print(d.toStringAsFixed(2));

  Point2 p2_1 = Point2();
  print(p2_1.x);
  print(p2_1.z);

  print(MyMath.pi);
  print(MyMath.square(5));

  Rectangle r = Rectangle(0, 0, 15, 10);
  r.z = 10;
  print(r.z);
  print(r.toString());

  Rectangle r2 = Rectangle(1, 0, 15, 10);
  print(r == r2);
}
