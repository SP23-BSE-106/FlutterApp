class Animal {
  void speak() {
    print("Animal speaks");
  }
}

class Dog extends Animal {
  @override
  void speak() {
    print("Dog says: Woof! Woof!");
  }
}

class Cat extends Animal {
  @override
  void speak() {
    print("Cat says: Meow! Meow!");
  }
}

void main() {
  Dog d = Dog();
  Cat c = Cat();

  d.speak();
  c.speak();
}
