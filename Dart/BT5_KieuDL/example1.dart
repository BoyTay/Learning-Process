void main(){
  // int : kieu so nguyen
  int a = 10;

  // double : kieu so thuc
  double b = 20.5;

  // num : co the la so nguyen hoac so thuc
  num c = 15;
  num d = 25.75;

  //Chuyen chuoi sang so nguyen
  var one = int.parse('100');
  print(one==1? 'true' : 'false');

  // Chuyen chuoi sang so thuc
  var onePointFive = double.parse('1.5');
  print(onePointFive==1.5? 'true' : 'false');

  // So nguyen sang chuoi
  String str = 1.toString();// chu so bat ki
  print(str);

  // So thuc sang chuoi
  String pi = 3.14159.toStringAsFixed(2); // 2 la so chu so thap phan sau dau phay
  print(pi);
}