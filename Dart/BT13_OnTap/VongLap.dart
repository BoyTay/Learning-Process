void main(){
  //Vòng lặp for
  for(int i=1; i<=5;i++){
    print(i);
  }
  
  //Iterable:List,Set
  //for-in
  var names = ["Phan","Trung","Hieu"];
  for(var name in names){
    print(name);
  }

  //Vòng lặp while
  var i=1;
  while(i<=5){
    print(i);
    i++;
  }

  //Vòng lặp do-while
  var x=1;
  do{
    print(x);
    x++;
  }while(x<=5);
  
}