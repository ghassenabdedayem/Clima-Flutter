import 'package:geolocator/geolocator.dart';

class Location {

  Location ({this.longitude, this.latitude});

  double longitude;
  double latitude;

  void getCurrentLocation() async {
    try{
      Position position = await Geolocator()
          .getCurrentPosition(desiredAccuracy: LocationAccuracy.low);
      latitude = position.latitude;
      longitude = position.longitude;
    } catch (e) {
      print(e);
    }
  }
}


