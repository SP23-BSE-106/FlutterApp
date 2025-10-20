import 'dart:math';
class Shape {
  double area() {
    return 0.0;
  }
}
class Circle extends Shape {
  double radius;
  Circle(this.radius);
  @override
  double area() {
    return pi * radius * radius;
  }
}
class Rectangle extends Shape {
  double length;
  double width;
  Rectangle(this.length, this.width);
  @override
  double area() {
    return length * width;
  }
}
void main() {
  Circle c = Circle(5);
  Rectangle r = Rectangle(20, 10);
  print('Circle Area: ${c.area().toStringAsFixed(1)}');
  print('Rectangle Area: ${r.area()}');
}
