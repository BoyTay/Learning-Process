/*
Records là một kiểu dữ liệu tổng hợp (composite type) được giới thiệu trong Dart 3.0
cho phép nhóm nhiều giá trị có kiểu khác nhau thành một đơn vị duy nhất.
Records là immutable - nghĩa là không thể thay đổi giá trị sau khi tạo. 
*/
void main(){
  var r = ('first',a:2, true,10,10.5);//Records

  //Định nghĩa record có 2 giá trị
  var point =(123,456);

  //Định nghĩa person
  var person = (name:'Alice', age:30,5);

  //Truy cập giá trị trong record
  //Dùng chỉ số

  print(point.$1); //123
  print(point.$2); //456
  print(person.$1); //5
  //Dùng tên 
  print(person.name); //Alice
  print(person.age); //30
}