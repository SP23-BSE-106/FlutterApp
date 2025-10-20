import 'dart:math';
abstract class Shape {
  double area();
}
class Circle extends Shape {
  double radius;
  Circle(this.radius);
  @override
  double area() {
    return 3.14 * radius * radius;
  }
}
class Rectangle extends Shape {
  double length, width;
  Rectangle(this.length, this.width);

  @override
  double area() {
    return length * width;
  }
}
void main() {
  Circle c = Circle(5);
  Rectangle r = Rectangle(20, 10);

  print("Circle Area: ${c.area()}");
  print("Rectangle Area: ${r.area()}");
}
