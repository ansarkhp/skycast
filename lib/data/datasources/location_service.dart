import 'package:geocoding/geocoding.dart';
import 'package:geolocator/geolocator.dart';

final _geocoding = Geocoding();

Future<String?> getPlaceName(double lat, double lon) async {
  final placemarks = await _geocoding.placemarkFromCoordinates(lat, lon);
  if (placemarks.isNotEmpty) {
    final place = placemarks.first;

    print('Place: ${place.name}');
    print('Street: ${place.street}');
    print('City: ${place.locality}');
    print('State: ${place.administrativeArea}');
    print('Country: ${place.country}');
    print('Pincode: ${place.postalCode}');
  }

  if (placemarks.isEmpty) {
    print("hello ,not found any placemarks");
    return null;
  }

  final p = placemarks.first;
  for (final name in [
    p.locality,
    p.subAdministrativeArea,
    p.administrativeArea,
  ]) {
    if (name != null && name.isNotEmpty) return name;
  }
  return null;
}

// Future<void> getAddress(double lat, double lng) async {
//   List<Placemark> places = await _geocoding.placemarkFromCoordinates(lat, lng);

//   // if (places.isNotEmpty) {
//   //   final place = places.first;

//   //   print('Place: ${place.name}');
//   //   print('Street: ${place.street}');
//   //   print('City: ${place.locality}');
//   //   print('State: ${place.administrativeArea}');
//   //   print('Country: ${place.country}');
//   //   print('Pincode: ${place.postalCode}');
//   // }
// }

/// Determine the current position of the device.
///
/// When the location services are not enabled or permissions
/// are denied the `Future` will return an error.
Future<Position> determinePosition() async {
  bool serviceEnabled;
  LocationPermission permission;

  // Test if location services are enabled.
  serviceEnabled = await Geolocator.isLocationServiceEnabled();
  if (!serviceEnabled) {
    // Location services are not enabled don't continue
    // accessing the position and request users of the
    // App to enable the location services.
    return Future.error('Location services are disabled.');
  }

  permission = await Geolocator.checkPermission();
  if (permission == LocationPermission.denied) {
    permission = await Geolocator.requestPermission();
    if (permission == LocationPermission.denied) {
      // Permissions are denied, next time you could try
      // requesting permissions again (this is also where
      // Android's shouldShowRequestPermissionRationale
      // returned true. According to Android guidelines
      // your App should show an explanatory UI now.
      return Future.error('Location permissions are denied');
    }
  }

  if (permission == LocationPermission.deniedForever) {
    // Permissions are denied forever, handle appropriately.
    return Future.error(
      'Location permissions are permanently denied, we cannot request permissions.',
    );
  }

  // When we reach here, permissions are granted and we can
  // continue accessing the position of the device.
  return await Geolocator.getCurrentPosition();
}
