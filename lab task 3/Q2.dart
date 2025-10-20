import 'dart:math';

class Shape {
  double area() {
    return 0;
  }
}

class Circle extends Shape {
  double r;
  Circle(this.r);

  @override
  double area() {
    return pi * r * r;
  }
}

class Rectangle extends Shape {
  double l, w;
  Rectangle(this.l, this.w);

  @override
  double area() {
    return l * w;
  }
}

void main() {
  Shape c = Circle(5);
  Shape r = Rectangle(4, 6);

  print("Circle area: ${c.area()}");
  print("Rectangle area: ${r.area()}");
}
