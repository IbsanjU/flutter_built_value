library serializers;

import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart';
import 'package:flutter_built_value/model/built_vehicle.dart';

part 'serializers.g.dart';

// #annotate the top level field
@SerializersFor(const [BuiltVehicle, VehicleType])
final Serializers serializers = (_$serializers.toBuilder()
  ..addPlugin(StandardJsonPlugin())).build(); // Create a Top level field

// final Serializers serializers = _$serializers; // Create a Top level field
// // #this will give json like
// // #["type","car","brand","Mercedes","price",10000.0,"passengerNames",["Bharath","Abhi","Radha","Lynda"]]
