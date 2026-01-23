void main(){
  var a = 2;
  print(a);

  // ??= : se gan gia tri neu bien chua co gia tri (null)
  int? b;
  b ??= 5; //b = 5
  print('b = $b');
  
  b ??= 10; //b van la 5
  print('b = $b');
}