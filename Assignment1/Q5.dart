class Animal {
  void speak() {
    print("Animal makes a sound");
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
  Dog dog = Dog();
  Cat cat = Cat();
  dog.speak();
  cat.speak();
}
