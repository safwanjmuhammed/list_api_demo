import 'package:geolocator/geolocator.dart';

class Location {
  getlocation() async {
    try {
      final permissionStatus = await Geolocator.checkPermission();
      print(permissionStatus.toString());
      if (permissionStatus == LocationPermission.denied) {
        await Geolocator.requestPermission();
      } else if (permissionStatus == LocationPermission.always ||
          permissionStatus == LocationPermission.whileInUse) {
        final gpsLocation = await Geolocator.getCurrentPosition();
        print(gpsLocation.latitude);
      }
    } catch (e) {
      print(e);
    }
  }
}
