import 'package:geolocator/geolocator.dart';

class CurrentLocation {
  double? latitude, longitude;
  Future<dynamic> getCurrentLocation() async {
    try {
      Position position = await Geolocator()
          .getCurrentPosition(desiredAccuracy: LocationAccuracy.high);

      latitude = position.latitude;
      longitude = position.longitude;
    } catch (e) {
      Geolocator geolocator = Geolocator()..forceAndroidLocationManager = true;
      GeolocationStatus geolocationStatus =
          await geolocator.checkGeolocationPermissionStatus();
    }
  }
}
