import 'dart:io';
void main(){
  //Nhap ten nguoi dung
  stdout.write('Nhap ten cua ban: ');
  String name = stdin.readLineSync()!;// ! : chắc chắc nhập dữ kiệu ko bị null
  
  //Nhap tuoi nguoi dung
  stdout.write('Nhap tuoi cua ban: ');
  int age = int.parse(stdin.readLineSync()!);

  print('Xin chao $name, tuoi cua ban la $age.');
}