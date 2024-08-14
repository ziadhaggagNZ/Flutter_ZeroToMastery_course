void main() {
  List<int> numberList = [3, 4, 5, 6, 7, 5];
  List<int> secondList = [];

  numberList.forEach((element) {
    element++;
    secondList.add(element);
    print(element);
  },);
  
  print(numberList);
  print(secondList);
  
}