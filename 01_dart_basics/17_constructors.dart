void main()
{
  final Car blueCar = Car(color: "blue", engine: "V8");
  print(blueCar.color);
}



class Car {
  
  Car({required this.color , required this.engine});

  final String color;
  final String engine;

  void drivr ()
  {
    print("$color is moving");
  }

  void whichColor()
  {
    print("car color: ${this.color}");
  }

}