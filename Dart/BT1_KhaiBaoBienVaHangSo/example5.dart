void main(){
  //Bien final chỉ được gán giá trị một lần
  final name = 'Hieu';

  final int age;
  age = 25;
  //age = 30; //Lỗi vì final chỉ được gán một lần
  
  //Hang so "const" phải được gán giá trị ngay khi khai báo
  const pi = 3.14;
  //const int year; //Lỗi vì const phải được gán giá trị ngay khi

}
