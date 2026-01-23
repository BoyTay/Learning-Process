void main(){
  int diemToan = 8;
  int diemVan = 7;
  int tongDiem = 0;
  //Cong diem tung mon
  tongDiem += diemToan; // tongDiem = tongDiem + diemToan
  tongDiem += diemVan;  // tongDiem = tongDiem + diemVan
  //Tinh diem trung binh
  double diemTB = tongDiem / 2;
  //Gian diem dat / khong dat
  String? ketQua;
  ketQua ??='Chua xet';
  if(diemTB >= 5){
    ketQua = 'Dat';
  }
  print('Ket qua: $ketQua');
  print('Diem trung binh: $diemTB');
}