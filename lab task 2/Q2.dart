class Car {
  String brand;
  String model;
  int year;

  Car(this.brand, this.model, this.year);

  void displayInfo() {
    print('Brand: $brand, Model: $model, Year: $year');
  }
}

void main() {
  Car car1 = Car('Kia', 'Sportage', 2021);
  Car car2 = Car('Hyundai', 'Elantra', 2022);

  car1.displayInfo();
  car2.displayInfo();
}
