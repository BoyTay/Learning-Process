import 'dart:math';

void main() {
  //Định nghĩa:
  //- Set là tập hợp các phân tử không trùng lặp
  //- Set không có thứ tự xác định
  //- Mỗi phần tử chỉ xuất hiện một lần

  //Cách khai báo:
  Set<String> set1 = {'Dart', 'Flutter', 'Dart'}; //Trực tiếp
  //Khác nhau giữa List và Set là List sài dấu [] còn Set sài dấu {}
  var set2 = <int>{1,2,3}; //Sử dụng từ khóa var
  Set<String> set3 = Set(); //Set rỗng
  var set4 = Set<int>.from([1,2,2,3]); //Từ list (Loại bỏ trùng)

  //Các phương thức:
  
  //1. Thêm phần tử:
  set1.add("React");// Thêm 1 phần tử
  set1.addAll(["Vue","Angular"]); //Thêm nhiều phần tử
  print(set1); //Kết quả: {Dart, Flutter, React, Vue, Angular}

  //2.  Xoá phần tử:
  //set1.remove("Dart"); //Xoá phần tử
  //set1.removeAll(["Flutter", "React"]); //Xoá nhiều phần tử
  //set1.clear(); //Xoá tất cả phần tử
  print(set1); 

  //3. Truy cập và kiểm tra phần tử:
  print(set1.length); //Độ dài của Set
  print(set1.isEmpty); //Kiểm tra rỗng
  print(set1.contains("Vue")); //Kiểm tra phần tử có trong Set không

  //4. Các phép toán tập hợp:
  var set5 = {1,2,3};
  var set6 = {3,4,5};

  var union = set5.union(set6); //Hợp
  print(union); //Kết quả: {1, 2, 3, 4, 5}

  var intersection = set5.intersection(set6); //Giao
  print(intersection); //Kết quả: {3}

  var difference = set5.difference(set6); //Hiệu
  print(difference); //Kết quả: {1, 2}
  
  var difference2 = set6.difference(set5); //Hiệu ngược
  print(difference2); //Kết quả: {4, 5}

  //5. Biến đổi
  var list = set1.toList(); //Chuyển Set thành List
  var newSet = Set.from(set1); //Chuyển List thành Set
   
  //6. Lọc và ánh xạ
  var filtered = set1.where((e) => e.startsWith("D")); //Lọc phần tử bắt đầu bằng "D"
  //print(filtered); //Kết quả: (Dart)

  var mapped = set1.map((e) => e.toLowerCase()); //Ánh xạ phần tử thành chữ thường
  //print(mapped); //Kết quả: {angular, vue, react, flutter}

  //7. Xử lý từng phần tử
  set1.forEach((element){
    print(element); //In từng phần tử
  });

  // Ví dụ thực tế:
  //Quản lý danh sách bạn bè
  Set<String> friends = {'user1', 'user2', 'user3'};

  //Thêm bạn
  friends.add('user4');
  friends.add('user2'); //Không thêm được vì đã tồn tại

  //Kiểm tra bạn bè
  bool isFriend = friends.contains('user3'); //true

  //Đề xuất bạn bè
  Set<String> suggestedFriends = {'user5', 'user6', 'user1'};
  var newFriends = suggestedFriends.difference(friends); //Đề xuất bạn mới
}