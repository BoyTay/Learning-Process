class Product{
  double price;
  int  quantity;
  String name;
  Product(this.price, this.quantity, this.name);

  void showTotal(){
    print("Total price is: ${price * quantity}");
  }
}

class Tablet extends Product{
  double width=0;
  double height=0;
  Tablet(this.width,this.height,double price, int quantity, String name):super(price,quantity,name);

  @override
  void showTotal() {
    print("Name of Tablet: $name");
    super.showTotal();
  }
}

void main(){
  Product p = Product(10, 5, "Book");

  Product p1 = new Tablet(7, 10, 20, 3, "iPad");
  p.showTotal();

  p1.showTotal();
}