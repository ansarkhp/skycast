class CityLocation {
  const CityLocation({
    required this.name,
    required this.latitude,
    required this.longitude,
    this.region,
    this.country,
  });

  final String name;
  final double latitude;
  final double longitude;
  final String? region;
  final String? country;

  String get subtitle => [region, country]
      .whereType<String>()
      .where((part) => part.isNotEmpty)
      .join(', ');

  String get cacheKey => '$latitude,$longitude';

  bool isSameAs(CityLocation? other) =>
      other != null &&
      other.latitude == latitude &&
      other.longitude == longitude;

  factory CityLocation.fromJson(Map<String, dynamic> json) => CityLocation(
    name: json['name'] as String,
    latitude: (json['latitude'] as num).toDouble(),
    longitude: (json['longitude'] as num).toDouble(),
    region: json['admin1'] as String?,
    country: json['country'] as String?,
  );

  Map<String, dynamic> toJson() => {
    'name': name,
    'latitude': latitude,
    'longitude': longitude,
    'admin1': region,
    'country': country,
  };
}
