void main(){
  //Định nghĩa
  //-List là tập hợp các phần tử có thứ tự và có thể trùng lặp
  //- Các phần tử được truy cập bằng chỉ số index, bắt đầu từ 0
  //- Kích thước có thể thay đổi được
  List<String> list1 = ['Apple', 'Banana', 'Cherry'];//Trực tiếp
  var list2 = [1, 2, 3, 4, 5];//Tự động suy luận kiểu dữ liệu
  List<String> list3 = [];//Rỗng
  var list4 = List<int>.filled(5, 0);//List có kích thước cố định [0,0,0,0,0]
  print(list4); 

  //1.Thêm phần tử
  list1.add('Durian');//Thêm vào cuối
  list1.addAll(['Apple','Banana']);//Thêm nhiều phần tử
  list1.insert(0, 'Mango');//Chèn phần tử tại vị trí 0
  list1.insertAll(2, ['1','0']);//Chèn nhiều phần tử từ vị trí 2
  print(list1);

  //2.Xóa phần tử
  list1.remove('Apple');//Xóa phần tử có giá trị 'Apple' đầu tiên
  list1.removeAt(0);//Xóa phần tử tại vị trí 0
  list1.removeLast();//Xóa phần tử cuối cùng
  list1.removeWhere((e)=>e=='Banana');//Xóa theo điều kiện
  list1.clear();//Xóa tất cả phần tử
  print(list1);

  //3. Truy cập phần tử
  print(list2[0]);//Truy cập phần tử tại vị trí 0
  print(list2.first);//Phần tử đầu tiên
  print(list2.last);//Phần tử cuối cùng
  print(list2.length);//Độ dài của List

  //4. Duyệt List
  print(list2.isEmpty);//Kiểm tra rỗng
  print('List 3: ${list3.isNotEmpty?'Không rỗng':'Rỗng'}');//Kiểm tra không rỗng
  print(list4.contains(1));//Kiểm tra phần tử có trong List hay không
  print(list4.contains(0));
  print(list4.indexOf(0));//Vị trí phần tử đầu tiên có giá trị 0
  print(list4.lastIndexOf(0));//Vị trí phần tử cuối cùng có giá trị 0

  //5. Biến đổi
  list4 = [2,1,3,9,0,10];
  print(list4);
  list4.sort();//Sắp xếp tăng dần
  print(list4);
  //list4.sort((a,b)=>b.compareTo(a));//Sắp xếp giảm dần
  list4.reversed;//Đảo ngược
  print(list4.reversed);

  list4 = list4.reversed.toList();//Chuyển Iterable thành List
  print(list4);

  //6. Cắt và nối
  var subList = list4.sublist(1,4);//Cắt từ vị trí 1 đến 3 (4 không bao gồm)
  print(subList);
  var str_joined = list4.join('-');//Nối các phần tử thành chuỗi, ngăn cách bởi '-'
  print(str_joined);

  //7. Duyệt các phần tử trong List
  list4.forEach((element){
    print('Phần tử: $element');
  });
}