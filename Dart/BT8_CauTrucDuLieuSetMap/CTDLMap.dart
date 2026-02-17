void main() {
  //Định nghĩa:
  //Map là cấu trúc dữ liệu lưu trữ các cặp key-value
  //Mỗi key trong Map là duy nhất và không trùng lặp
  //Value có thể trùng lặp
  //Key và value có thể là bất kỳ kiểu dữ liệu nào

  //Cách khai báo:
  //Cách 1: Khai báo trực tiếp
  Map<String, dynamic> user1 = {"name": "Alice", "age": 30, "isStudent": false};

  //Cách 2: Sử dụng từ khóa var
  var user2 = <String, dynamic>{"name": "Bob", "age": 25, "isStudent": true};

  //Cách 3: Sử dụng Map rỗng
  Map<int, String> numbers = {};
  var emptyMaop = Map<String, int>();

  //Các phương thức:
  //1. Thêm và cập nhật entry:
  user1["email"] = 'pth@gmail.com'; // Thêm entry mới
  user1["age"] = 31; // Cập nhật giá trị của key "age"
  user1.putIfAbsent(
    'phone',
    () => '0123456789',
  ); // Thêm entry nếu key "phone" chưa tồn tại
  user1.addAll({
    // Thêm nhiều entry
    "address": "123 Main St",
    "gender": 'male',
  });

  //2. Xóa entry:
  //user1.remove('age'); // Xóa entry với key "age"
  //user1.removeWhere((key, value) => key == 'isStudent'); // Xóa entry với điều kiện
  //user1.clear(); // Xóa tất cả entry

  //3. Truy cập và kiểm tra entry:
  print(user1["name"]); // Truy cập giá trị của key "name"
  print(user1.length); // Số lượng entry trong Map

  // Lấy value an toàn với giá trị mặc định
  String phone = user1['phone'] ?? 'No phone';

  //4. Kiểm tra
  print(user1.isEmpty); // Kiểm tra Map có rỗng không
  print(user1.isNotEmpty); // Kiểm tra Map không rỗng
  print(user1.containsKey("email")); // Kiểm tra key "email" có tồn tại không
  print(
    user1.containsValue("Alice"),
  ); // Kiểm tra value "Alice" có tồn tại không

  //5. Lấy danh sách
  print(user1.keys); // Lấy tất cả key
  print(user1.values); // Lấy tất cả value
  print(user1.entries); // Lấy tất cả entry dưới dạng MapEntry

  //6. Duyệt map
  //Duyệt theo key-value
  user1.forEach((key, value) {
    print('$key: $value');
  });

  //Duyệt theo entry
  for (var entry in user1.entries) {
    print('${entry.key}: ${entry.value}');
  }
  //7.Biến đổi
  //Map key thành chữ hoa
  var upperMap = user1.map((key, value) => MapEntry(key.toUpperCase(), value));

  //Lọc map
  var filteredMap = user1.entries
      .where((entry) => entry.value is String)
      .toList();

  //Ví dụ thực tế:
  //1. Lưu trữ thông tin sản phẩm trong giở hàng
  Map<String,int> cart = {
    "Apple": 2,
    "Banana": 3,
    "Orange": 1,
  };
}
