void main()
{
  Car car1 = Car();
  car1.setColor = "red";

  Car car2 = Car();
  car2.setColor="blue";

  String colorFromCar1 = car1.color;
  print(colorFromCar1);

  String colorFromCar2 = car2.color;
  print(colorFromCar2);
  
}



class Car {
 late String _color;

  set setColor(String color)
  {
    this._color = color;
  }

  String get color => this._color;
  void drivr ()
  {
    print("car is moving");
  }

  void whichColor()
  {
    print("car color: ${this._color}");
  }

}