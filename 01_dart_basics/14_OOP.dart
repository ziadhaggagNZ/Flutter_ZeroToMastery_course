void main()
{
  Car car1 = Car();
  car1.color = "red";

  Car car2 = Car();
  car2.color="blue";

  car1.whichColor();
  car2.whichColor();

  car1.drivr();
  car2.drivr();
}



class Car {
  late String color;

  void drivr ()
  {
    print("$color is moving");
  }

  void whichColor()
  {
    print("car color: $color");
  }

}