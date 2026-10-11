void main() {
  List<Vehicle> vehicles = [
    Car(8.0),
    Car(6.5),
    Motorcycle(4.0),
  ];

  double distance = 250;
  double liters = totalConsumption(vehicles, distance);

  print('Հեռավորությունը՝ $distance կմ');
  print('Ընդհանուր վառելիքը՝ ${liters.toStringAsFixed(2)} լիտր');
}




abstract class Vehicle {
  double fuelConsumption();
}

class Car extends Vehicle {
  double litersPer100Km;

  Car(this.litersPer100Km);

  @override
  double fuelConsumption() => litersPer100Km;
}

class Motorcycle extends Vehicle {
  double litersPer100Km;

  Motorcycle(this.litersPer100Km);

  @override
  double fuelConsumption() => litersPer100Km;
}

double totalConsumption(List<Vehicle> vehicles, double distance) {
  double total = 0;
  for (Vehicle vehicle in vehicles) {
    total += vehicle.fuelConsumption() * distance / 100;
  }
  return total;
}




