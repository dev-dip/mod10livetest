class Car {
  String brand;
  String model;
  int year;
  double milesDriven;

  static int numberOfCars = 0;

  Car(this.brand, this.model, this.year, this.milesDriven) {
    numberOfCars++;
  }
  void drive(double miles) {
    milesDriven += miles;
  }
  double getMilesDriven() {
    return milesDriven;
  }
  String getBrand() {
    return brand;
  }
  String getModel() {
    return model;
  }
  int getYear() {
    return year;
  }
  int getAge() {
    return DateTime.now().year - year;
  }
}

void main() {

  Car car1 = Car('Toyota', 'Corolla', 2010, 50000);
  Car car2 = Car('Honda', 'Civic', 2015, 30000);
  Car car3 = Car('Mitsubishi', 'LancerEx', 2020, 10000);

  car1.drive(100);
  car2.drive(200);
  car3.drive(300);

  print('Car 1: Brand=${car1.getBrand()}, Model=${car1.getModel()}, Year=${car1.getYear()}, Miles Driven=${car1.getMilesDriven()}, Age=${car1.getAge()}');
  print('Car 2: Brand=${car2.getBrand()}, Model=${car2.getModel()}, Year=${car2.getYear()}, Miles Driven=${car2.getMilesDriven()}, Age=${car2.getAge()}');
  print('Car 3: Brand=${car3.getBrand()}, Model=${car3.getModel()}, Year=${car3.getYear()}, Miles Driven=${car3.getMilesDriven()}, Age=${car3.getAge()}');
  print('Total number of cars created: ${Car.numberOfCars}');
}
