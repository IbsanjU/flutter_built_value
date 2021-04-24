import 'package:flutter_built_value/model/built_vehicle.dart'; // model class

class CodeRunner {
  static void runCode() {
    // // #Create a new instances of BuiltVehicle by calling its factory
    // // #..type => ".." is a cascading operator
    // var car = BuiltVehicle((b) => b
    //   ..type = 'car'
    //   ..brand = 'Tesla'
    //   ..price = 10000);

    // var car2 = BuiltVehicle((b) => b
    //   ..type = 'car'
    //   ..brand = 'Tesla'
    //   ..price = 10000);
    // // print(car == car2); // true => output will be true

    // // #Copy a built_value and modify (Update)
    // var copiedCar = car.rebuild((b) => b..brand = 'BMW');
    // // print(car);
    // // print(copiedCar);

    // // #If you don't want to specify an item
    // // #It will thow an error with a nullfield brand
    // // #So mark it with @nullable in BuiltVehicle
    // // #someNullableValue is not specified yet we dont get any error
    // // #since its @nullable
    // var car3 = BuiltVehicle((b) => b
    //   ..type = 'car'
    //   ..brand = 'Mercedes'
    //   ..price = 10000);
    // print(car3);

    // // #Add a List/Collection to builtVehicle using built_value

    // var car4 = BuiltVehicle(
    //   (b) => b
    //     ..type = 'car'
    //     ..brand = 'Mercedes'
    //     ..price = 10000
    //     ..passengerNames.addAll(['Bharath', 'Abhi', 'Radha', 'Lynda']),
    // );
    // // print(car4);

    // // #'type' can be set to anything, so we will make type ENUM
    // // #To make the type as ENUM =>
    // // #ENUM in dart are not really classes, and they are not that powerful
    // // #We will create a ENUM class using built_value, in BuiltVehicle Class
    var car5 = BuiltVehicle((b) => b
      ..type = VehicleType.car
      ..brand = 'Mercedes'
      ..price = 10000
      ..passengerNames.addAll(['Bharath', 'Abhi', 'Radha', 'Lynda']));
    print(car5);
    // Copy and Modify vehicleType
    var car6 = car5.rebuild((b) => b
      ..type = VehicleType.motorbike
      ..brand = 'Skoda Transportation');
    print(car6);
  }
}
