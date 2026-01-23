/*
   ax^2 + bx + c = 0
 */
import 'dart:math';//Thu vien toan hoc
import 'dart:io'; //Thu vien nhap xuat
void main(){
  double a =0,b=0,c=0;
  do {
    stdout.write("Nhap a (a!=0): "); 
    String? input = stdin.readLineSync();
    if (input != null) {
      a = double.tryParse(input!) ?? 0;
    }
  } while (a==0);

  //input b
  stdout.write("Nhap b: ");
  String? intputB = stdin.readLineSync();
  if (intputB != null) {
    b = double.tryParse(intputB) ?? 0;
  }
  //input c
  stdout.write("Nhap c: ");
  String? inputC = stdin.readLineSync();
  if (inputC != null) {
    c = double.tryParse(inputC) ?? 0;
  }

  //Tính delta
  double delta = b*b - 4*a*c;
  //Hiển thị phương trình
  print('Phương trình : ${a}x^2 + ${b}x + ${c} = 0');
  if (delta < 0) {
    print("Phương trình vô nghiệm");
  } else if (delta == 0) {
    double x = -b/(2*a);
    print("Phương trình có nghiệm kép x1 = x2 = ${x.toStringAsFixed(2)}");
  } else {
    double x1 = (-b + sqrt(delta)) / (2*a);
    double x2 = (-b - sqrt(delta)) / (2*a);
    print("Phương trình có hai nghiệm phân biệt:");
    print("x1 = ${x1.toStringAsFixed(2)}");
    print("x2 = ${x2.toStringAsFixed(2)}");
  }
}