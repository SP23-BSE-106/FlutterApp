import 'dart:math';

abstract class Shape {
  double area();
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
  Rectangle r = Rectangle(15, 8);

  print('Circle Area: ${c.area()}');
  print('Rectangle Area: ${r.area()}');
}
