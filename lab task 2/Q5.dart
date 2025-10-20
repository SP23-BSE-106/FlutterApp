class Animal {
  void speak() {
    print('Animal makes a sound');
  }
}

class Dog extends Animal {
  @override
  void speak() {
    print('Dog says: Bhow! Bhow!');
  }
}

class Cat extends Animal {
  @override
  void speak() {
    print('Cat says: Meww! Meww!');
  }
}

void main() {
  Dog d = Dog();
  Cat c = Cat();

  d.speak();
  c.speak();
}
