import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';

class Location {
  Future<Position> getlocation() async {
    try {
      final permissionStatus = await Geolocator.checkPermission();
      print(permissionStatus.toString());
      if (permissionStatus == LocationPermission.denied) {
        await Geolocator.requestPermission();
      } else if (permissionStatus == LocationPermission.always ||
          permissionStatus == LocationPermission.whileInUse) {
        final gpsLocation = await Geolocator.getCurrentPosition();
        print(gpsLocation.latitude);
        return gpsLocation;
      }else{}
    } catch (e) {}
    throw Exception('Location fetching failed...');
  }
}
