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
  Car myCar = Car('Suzuki', 'Alto', 2023);
  myCar.displayInfo();
}
