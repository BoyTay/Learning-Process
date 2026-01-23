/*
expr1 ? expr2 : expr3;
Nếu expr1 đúng, thì trả về expr2, ngược lại trả về expr3.

expr1 ?? expr2;
Nếu expr1 không phải là null, thì trả về expr1, ngược lại trả về expr2.
 */
void main(){
  var kiemTra = (100%2==0) ? "So chan" : "So le";
  print(kiemTra); // So chan

  var x = 100;
  var y = x ?? 50;
  print(y); // 100

  int? z;
  y = z ?? 30;
  print(y); // 30
}