void main(){
  Object obj= ' Hello';
  //Kiem tra obj co phai la String hay khong
  if(obj is String){
    print('obj la String');
  }

  //Kiem tra obj khong phai la int
  if(obj is! int){
    print('obj khong phai la int');
  }

  //Ep kieu
  String str = obj as String;
  print(str.toUpperCase());
}