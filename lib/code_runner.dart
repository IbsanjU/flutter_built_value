import 'package:flutter_built_value/model/built_vehicle.dart'; // model class

class CodeRunner {
  static void runCode() {
    // var car = BuiltVehicle((b) => b
    //   ..type = 'car'
    //   ..brand = 'Tesla'
    //   ..price = 10000);

    // var car2 = BuiltVehicle((b) => b
    //   ..type = 'car'
    //   ..brand = 'Tesla'
    //   ..price = 10000);
    // // print(car == car2); // true => output will be true

    // var copiedCar = car.rebuild((b) => b..brand = 'BMW');
    // // print(car);
    // // print(copiedCar);

    // var car3 = BuiltVehicle((b) => b
    //   ..type = 'car'
    //   ..brand = 'Mercedes'
    //   ..price = 10000);
    // print(car3);

    // var car4 = BuiltVehicle(
    //   (b) => b
    //     ..type = 'car'
    //     ..brand = 'Mercedes'
    //     ..price = 10000
    //     ..passengerNames.addAll(['Bharath', 'Abhi', 'Radha', 'Lynda']),
    // );
    // // print(car4);

    var car5 = BuiltVehicle((b) => b
      ..type = VehicleType.car
      ..brand = 'Mercedes'
      ..price = 10000
      ..passengerNames.addAll(['Bharath', 'Abhi', 'Radha', 'Lynda']));
    // print(car5);
    // // Copy and Modify vehicleType
    // var car6 = car5.rebuild((b) => b
    //   ..type = VehicleType.motorbike
    //   ..brand = 'Skoda Transportation');
    // print(car6);

    // Convert car to Json
    final car5Json = car5.toJson();
    print(
        car5Json); // ["type","car","brand","Mercedes","price",10000.0,"passengerNames",["Bharath","Abhi","Radha","Lynda"]]

    // Convert from Json
    final car5FromJson =
        BuiltVehicle.fromJson(car5Json).rebuild((b) => b..price = 500);
    print(car5FromJson);
  }
}
