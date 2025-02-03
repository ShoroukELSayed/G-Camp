import 'dart:io';

void main() {
  // 1. Check if a number is even or odd
  print('Enter a number: ');
  double? x = double.parse(stdin.readLineSync()!);
  print(x % 2 == 0 ? 'Even' : 'Odd');

  // 2. print numbers are less than 5
  List<int> a = [1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89];
  for( var num in a){
    if(num < 5){
      print(num);
    }
  }

  // 3. remove duplicates from a list
  List<int> b = [1, 1, 2, 3, 5, 8, 2, 21, 34, 5, 8];
  print(noDuplicates(b));


  // 4. Create an object of a class and display its information
  Car car = Car();
  car.displayInfo();
}

List <int> noDuplicates(List<int> list){
  return list.toSet().toList();
}


class Car{
  String brand = 'Toyota';
  String model = 'Corolla';
  int year = 2025;

  void displayInfo(){
    print('Brand: $brand');
    print('Model: $model');
    print('Year: $year');
  }
}