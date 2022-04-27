// #To create the automatically generated .g.dart file
// #run this command : use "build" or "watch"
// #flutter packages pub run build_runner watch

library built_vehicle;

import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:flutter_built_value/model/serializers.dart';

part 'built_vehicle.g.dart'; // auto generated file by built_value

// #This is a model class
abstract class BuiltVehicle implements Built<BuiltVehicle, BuiltVehicleBuilder> {
  // String get type;
  VehicleType get type;
  String get brand;
  double get price;

  // #To make the brand nullable, create a new property with boolean data
  @nullable
  bool get someNullableValue;

  // #To add a List/ Collection
  // #we have to use something called built_collection
  BuiltList<String> get passengerNames;

  BuiltVehicle._();

  factory BuiltVehicle([updates(BuiltVehicleBuilder b)]) = _$BuiltVehicle;

  // ---------------------------------------------------------
  //
  // Helper class json
  String toJson() => json.encode(serializers.serializeWith(BuiltVehicle.serializer, this));

  static BuiltVehicle fromJson(String jsonString) => serializers.deserializeWith(BuiltVehicle.serializer, json.decode(jsonString));

  // #Static Setialization
  static Serializer<BuiltVehicle> get serializer => _$builtVehicleSerializer;
}

// ENUM class for Vehicle Type, which extends EnumClass
class VehicleType extends EnumClass {
  static const VehicleType car = _$car;
  static const VehicleType motorbike = _$motorbike;
  static const VehicleType train = _$train;
  static const VehicleType plane = _$plane;

  // #Every Enum class will have a constructor
  // #It will be a constant constructor
  // #we will obtain 1 String name
  // #pass name to super constructor
  const VehicleType._(String name) : super(name);

  // #And a getter for value which will return the list of car, motorbike etc..
  // #it will be static built SET
  static BuiltSet<VehicleType> get values => _$values;
  // #It should return value of vehicelType name
  static VehicleType valueOf(String name) => _$valueOf(name);

  // #To make VehicleType Serialize
  static Serializer<VehicleType> get serializer => _$vehicleTypeSerializer;
  // #To make this work we need to add one more file
  // serializers.dart

}
