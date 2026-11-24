// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_database.dart';

// ignore_for_file: type=lint
class $CurrentWeatherCacheTable extends CurrentWeatherCache
    with TableInfo<$CurrentWeatherCacheTable, CurrentWeatherEntry> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $CurrentWeatherCacheTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _locationKeyMeta = const VerificationMeta(
    'locationKey',
  );
  @override
  late final GeneratedColumn<String> locationKey = GeneratedColumn<String>(
    'location_key',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _cityNameMeta = const VerificationMeta(
    'cityName',
  );
  @override
  late final GeneratedColumn<String> cityName = GeneratedColumn<String>(
    'city_name',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _temperatureMeta = const VerificationMeta(
    'temperature',
  );
  @override
  late final GeneratedColumn<double> temperature = GeneratedColumn<double>(
    'temperature',
    aliasedName,
    false,
    type: DriftSqlType.double,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _weatherCodeMeta = const VerificationMeta(
    'weatherCode',
  );
  @override
  late final GeneratedColumn<int> weatherCode = GeneratedColumn<int>(
    'weather_code',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _windSpeedMeta = const VerificationMeta(
    'windSpeed',
  );
  @override
  late final GeneratedColumn<int> windSpeed = GeneratedColumn<int>(
    'wind_speed',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _humidityMeta = const VerificationMeta(
    'humidity',
  );
  @override
  late final GeneratedColumn<int> humidity = GeneratedColumn<int>(
    'humidity',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _rainChanceMeta = const VerificationMeta(
    'rainChance',
  );
  @override
  late final GeneratedColumn<int> rainChance = GeneratedColumn<int>(
    'rain_chance',
    aliasedName,
    true,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _isDayMeta = const VerificationMeta('isDay');
  @override
  late final GeneratedColumn<bool> isDay = GeneratedColumn<bool>(
    'is_day',
    aliasedName,
    false,
    type: DriftSqlType.bool,
    requiredDuringInsert: true,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'CHECK ("is_day" IN (0, 1))',
    ),
  );
  static const VerificationMeta _utcOffsetSecondsMeta = const VerificationMeta(
    'utcOffsetSeconds',
  );
  @override
  late final GeneratedColumn<int> utcOffsetSeconds = GeneratedColumn<int>(
    'utc_offset_seconds',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _fetchedAtMeta = const VerificationMeta(
    'fetchedAt',
  );
  @override
  late final GeneratedColumn<DateTime> fetchedAt = GeneratedColumn<DateTime>(
    'fetched_at',
    aliasedName,
    false,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: true,
  );
  @override
  List<GeneratedColumn> get $columns => [
    locationKey,
    cityName,
    temperature,
    weatherCode,
    windSpeed,
    humidity,
    rainChance,
    isDay,
    utcOffsetSeconds,
    fetchedAt,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'current_weather_cache';
  @override
  VerificationContext validateIntegrity(
    Insertable<CurrentWeatherEntry> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('location_key')) {
      context.handle(
        _locationKeyMeta,
        locationKey.isAcceptableOrUnknown(
          data['location_key']!,
          _locationKeyMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_locationKeyMeta);
    }
    if (data.containsKey('city_name')) {
      context.handle(
        _cityNameMeta,
        cityName.isAcceptableOrUnknown(data['city_name']!, _cityNameMeta),
      );
    } else if (isInserting) {
      context.missing(_cityNameMeta);
    }
    if (data.containsKey('temperature')) {
      context.handle(
        _temperatureMeta,
        temperature.isAcceptableOrUnknown(
          data['temperature']!,
          _temperatureMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_temperatureMeta);
    }
    if (data.containsKey('weather_code')) {
      context.handle(
        _weatherCodeMeta,
        weatherCode.isAcceptableOrUnknown(
          data['weather_code']!,
          _weatherCodeMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_weatherCodeMeta);
    }
    if (data.containsKey('wind_speed')) {
      context.handle(
        _windSpeedMeta,
        windSpeed.isAcceptableOrUnknown(data['wind_speed']!, _windSpeedMeta),
      );
    } else if (isInserting) {
      context.missing(_windSpeedMeta);
    }
    if (data.containsKey('humidity')) {
      context.handle(
        _humidityMeta,
        humidity.isAcceptableOrUnknown(data['humidity']!, _humidityMeta),
      );
    } else if (isInserting) {
      context.missing(_humidityMeta);
    }
    if (data.containsKey('rain_chance')) {
      context.handle(
        _rainChanceMeta,
        rainChance.isAcceptableOrUnknown(data['rain_chance']!, _rainChanceMeta),
      );
    }
    if (data.containsKey('is_day')) {
      context.handle(
        _isDayMeta,
        isDay.isAcceptableOrUnknown(data['is_day']!, _isDayMeta),
      );
    } else if (isInserting) {
      context.missing(_isDayMeta);
    }
    if (data.containsKey('utc_offset_seconds')) {
      context.handle(
        _utcOffsetSecondsMeta,
        utcOffsetSeconds.isAcceptableOrUnknown(
          data['utc_offset_seconds']!,
          _utcOffsetSecondsMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_utcOffsetSecondsMeta);
    }
    if (data.containsKey('fetched_at')) {
      context.handle(
        _fetchedAtMeta,
        fetchedAt.isAcceptableOrUnknown(data['fetched_at']!, _fetchedAtMeta),
      );
    } else if (isInserting) {
      context.missing(_fetchedAtMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {locationKey};
  @override
  CurrentWeatherEntry map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return CurrentWeatherEntry(
      locationKey: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}location_key'],
      )!,
      cityName: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}city_name'],
      )!,
      temperature: attachedDatabase.typeMapping.read(
        DriftSqlType.double,
        data['${effectivePrefix}temperature'],
      )!,
      weatherCode: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}weather_code'],
      )!,
      windSpeed: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}wind_speed'],
      )!,
      humidity: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}humidity'],
      )!,
      rainChance: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}rain_chance'],
      ),
      isDay: attachedDatabase.typeMapping.read(
        DriftSqlType.bool,
        data['${effectivePrefix}is_day'],
      )!,
      utcOffsetSeconds: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}utc_offset_seconds'],
      )!,
      fetchedAt: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}fetched_at'],
      )!,
    );
  }

  @override
  $CurrentWeatherCacheTable createAlias(String alias) {
    return $CurrentWeatherCacheTable(attachedDatabase, alias);
  }
}

class CurrentWeatherEntry extends DataClass
    implements Insertable<CurrentWeatherEntry> {
  final String locationKey;
  final String cityName;
  final double temperature;
  final int weatherCode;
  final int windSpeed;
  final int humidity;
  final int? rainChance;
  final bool isDay;
  final int utcOffsetSeconds;
  final DateTime fetchedAt;
  const CurrentWeatherEntry({
    required this.locationKey,
    required this.cityName,
    required this.temperature,
    required this.weatherCode,
    required this.windSpeed,
    required this.humidity,
    this.rainChance,
    required this.isDay,
    required this.utcOffsetSeconds,
    required this.fetchedAt,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['location_key'] = Variable<String>(locationKey);
    map['city_name'] = Variable<String>(cityName);
    map['temperature'] = Variable<double>(temperature);
    map['weather_code'] = Variable<int>(weatherCode);
    map['wind_speed'] = Variable<int>(windSpeed);
    map['humidity'] = Variable<int>(humidity);
    if (!nullToAbsent || rainChance != null) {
      map['rain_chance'] = Variable<int>(rainChance);
    }
    map['is_day'] = Variable<bool>(isDay);
    map['utc_offset_seconds'] = Variable<int>(utcOffsetSeconds);
    map['fetched_at'] = Variable<DateTime>(fetchedAt);
    return map;
  }

  CurrentWeatherCacheCompanion toCompanion(bool nullToAbsent) {
    return CurrentWeatherCacheCompanion(
      locationKey: Value(locationKey),
      cityName: Value(cityName),
      temperature: Value(temperature),
      weatherCode: Value(weatherCode),
      windSpeed: Value(windSpeed),
      humidity: Value(humidity),
      rainChance: rainChance == null && nullToAbsent
          ? const Value.absent()
          : Value(rainChance),
      isDay: Value(isDay),
      utcOffsetSeconds: Value(utcOffsetSeconds),
      fetchedAt: Value(fetchedAt),
    );
  }

  factory CurrentWeatherEntry.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return CurrentWeatherEntry(
      locationKey: serializer.fromJson<String>(json['locationKey']),
      cityName: serializer.fromJson<String>(json['cityName']),
      temperature: serializer.fromJson<double>(json['temperature']),
      weatherCode: serializer.fromJson<int>(json['weatherCode']),
      windSpeed: serializer.fromJson<int>(json['windSpeed']),
      humidity: serializer.fromJson<int>(json['humidity']),
      rainChance: serializer.fromJson<int?>(json['rainChance']),
      isDay: serializer.fromJson<bool>(json['isDay']),
      utcOffsetSeconds: serializer.fromJson<int>(json['utcOffsetSeconds']),
      fetchedAt: serializer.fromJson<DateTime>(json['fetchedAt']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'locationKey': serializer.toJson<String>(locationKey),
      'cityName': serializer.toJson<String>(cityName),
      'temperature': serializer.toJson<double>(temperature),
      'weatherCode': serializer.toJson<int>(weatherCode),
      'windSpeed': serializer.toJson<int>(windSpeed),
      'humidity': serializer.toJson<int>(humidity),
      'rainChance': serializer.toJson<int?>(rainChance),
      'isDay': serializer.toJson<bool>(isDay),
      'utcOffsetSeconds': serializer.toJson<int>(utcOffsetSeconds),
      'fetchedAt': serializer.toJson<DateTime>(fetchedAt),
    };
  }

  CurrentWeatherEntry copyWith({
    String? locationKey,
    String? cityName,
    double? temperature,
    int? weatherCode,
    int? windSpeed,
    int? humidity,
    Value<int?> rainChance = const Value.absent(),
    bool? isDay,
    int? utcOffsetSeconds,
    DateTime? fetchedAt,
  }) => CurrentWeatherEntry(
    locationKey: locationKey ?? this.locationKey,
    cityName: cityName ?? this.cityName,
    temperature: temperature ?? this.temperature,
    weatherCode: weatherCode ?? this.weatherCode,
    windSpeed: windSpeed ?? this.windSpeed,
    humidity: humidity ?? this.humidity,
    rainChance: rainChance.present ? rainChance.value : this.rainChance,
    isDay: isDay ?? this.isDay,
    utcOffsetSeconds: utcOffsetSeconds ?? this.utcOffsetSeconds,
    fetchedAt: fetchedAt ?? this.fetchedAt,
  );
  CurrentWeatherEntry copyWithCompanion(CurrentWeatherCacheCompanion data) {
    return CurrentWeatherEntry(
      locationKey: data.locationKey.present
          ? data.locationKey.value
          : this.locationKey,
      cityName: data.cityName.present ? data.cityName.value : this.cityName,
      temperature: data.temperature.present
          ? data.temperature.value
          : this.temperature,
      weatherCode: data.weatherCode.present
          ? data.weatherCode.value
          : this.weatherCode,
      windSpeed: data.windSpeed.present ? data.windSpeed.value : this.windSpeed,
      humidity: data.humidity.present ? data.humidity.value : this.humidity,
      rainChance: data.rainChance.present
          ? data.rainChance.value
          : this.rainChance,
      isDay: data.isDay.present ? data.isDay.value : this.isDay,
      utcOffsetSeconds: data.utcOffsetSeconds.present
          ? data.utcOffsetSeconds.value
          : this.utcOffsetSeconds,
      fetchedAt: data.fetchedAt.present ? data.fetchedAt.value : this.fetchedAt,
    );
  }

  @override
  String toString() {
    return (StringBuffer('CurrentWeatherEntry(')
          ..write('locationKey: $locationKey, ')
          ..write('cityName: $cityName, ')
          ..write('temperature: $temperature, ')
          ..write('weatherCode: $weatherCode, ')
          ..write('windSpeed: $windSpeed, ')
          ..write('humidity: $humidity, ')
          ..write('rainChance: $rainChance, ')
          ..write('isDay: $isDay, ')
          ..write('utcOffsetSeconds: $utcOffsetSeconds, ')
          ..write('fetchedAt: $fetchedAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
    locationKey,
    cityName,
    temperature,
    weatherCode,
    windSpeed,
    humidity,
    rainChance,
    isDay,
    utcOffsetSeconds,
    fetchedAt,
  );
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is CurrentWeatherEntry &&
          other.locationKey == this.locationKey &&
          other.cityName == this.cityName &&
          other.temperature == this.temperature &&
          other.weatherCode == this.weatherCode &&
          other.windSpeed == this.windSpeed &&
          other.humidity == this.humidity &&
          other.rainChance == this.rainChance &&
          other.isDay == this.isDay &&
          other.utcOffsetSeconds == this.utcOffsetSeconds &&
          other.fetchedAt == this.fetchedAt);
}

class CurrentWeatherCacheCompanion
    extends UpdateCompanion<CurrentWeatherEntry> {
  final Value<String> locationKey;
  final Value<String> cityName;
  final Value<double> temperature;
  final Value<int> weatherCode;
  final Value<int> windSpeed;
  final Value<int> humidity;
  final Value<int?> rainChance;
  final Value<bool> isDay;
  final Value<int> utcOffsetSeconds;
  final Value<DateTime> fetchedAt;
  final Value<int> rowid;
  const CurrentWeatherCacheCompanion({
    this.locationKey = const Value.absent(),
    this.cityName = const Value.absent(),
    this.temperature = const Value.absent(),
    this.weatherCode = const Value.absent(),
    this.windSpeed = const Value.absent(),
    this.humidity = const Value.absent(),
    this.rainChance = const Value.absent(),
    this.isDay = const Value.absent(),
    this.utcOffsetSeconds = const Value.absent(),
    this.fetchedAt = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  CurrentWeatherCacheCompanion.insert({
    required String locationKey,
    required String cityName,
    required double temperature,
    required int weatherCode,
    required int windSpeed,
    required int humidity,
    this.rainChance = const Value.absent(),
    required bool isDay,
    required int utcOffsetSeconds,
    required DateTime fetchedAt,
    this.rowid = const Value.absent(),
  }) : locationKey = Value(locationKey),
       cityName = Value(cityName),
       temperature = Value(temperature),
       weatherCode = Value(weatherCode),
       windSpeed = Value(windSpeed),
       humidity = Value(humidity),
       isDay = Value(isDay),
       utcOffsetSeconds = Value(utcOffsetSeconds),
       fetchedAt = Value(fetchedAt);
  static Insertable<CurrentWeatherEntry> custom({
    Expression<String>? locationKey,
    Expression<String>? cityName,
    Expression<double>? temperature,
    Expression<int>? weatherCode,
    Expression<int>? windSpeed,
    Expression<int>? humidity,
    Expression<int>? rainChance,
    Expression<bool>? isDay,
    Expression<int>? utcOffsetSeconds,
    Expression<DateTime>? fetchedAt,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (locationKey != null) 'location_key': locationKey,
      if (cityName != null) 'city_name': cityName,
      if (temperature != null) 'temperature': temperature,
      if (weatherCode != null) 'weather_code': weatherCode,
      if (windSpeed != null) 'wind_speed': windSpeed,
      if (humidity != null) 'humidity': humidity,
      if (rainChance != null) 'rain_chance': rainChance,
      if (isDay != null) 'is_day': isDay,
      if (utcOffsetSeconds != null) 'utc_offset_seconds': utcOffsetSeconds,
      if (fetchedAt != null) 'fetched_at': fetchedAt,
      if (rowid != null) 'rowid': rowid,
    });
  }

  CurrentWeatherCacheCompanion copyWith({
    Value<String>? locationKey,
    Value<String>? cityName,
    Value<double>? temperature,
    Value<int>? weatherCode,
    Value<int>? windSpeed,
    Value<int>? humidity,
    Value<int?>? rainChance,
    Value<bool>? isDay,
    Value<int>? utcOffsetSeconds,
    Value<DateTime>? fetchedAt,
    Value<int>? rowid,
  }) {
    return CurrentWeatherCacheCompanion(
      locationKey: locationKey ?? this.locationKey,
      cityName: cityName ?? this.cityName,
      temperature: temperature ?? this.temperature,
      weatherCode: weatherCode ?? this.weatherCode,
      windSpeed: windSpeed ?? this.windSpeed,
      humidity: humidity ?? this.humidity,
      rainChance: rainChance ?? this.rainChance,
      isDay: isDay ?? this.isDay,
      utcOffsetSeconds: utcOffsetSeconds ?? this.utcOffsetSeconds,
      fetchedAt: fetchedAt ?? this.fetchedAt,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (locationKey.present) {
      map['location_key'] = Variable<String>(locationKey.value);
    }
    if (cityName.present) {
      map['city_name'] = Variable<String>(cityName.value);
    }
    if (temperature.present) {
      map['temperature'] = Variable<double>(temperature.value);
    }
    if (weatherCode.present) {
      map['weather_code'] = Variable<int>(weatherCode.value);
    }
    if (windSpeed.present) {
      map['wind_speed'] = Variable<int>(windSpeed.value);
    }
    if (humidity.present) {
      map['humidity'] = Variable<int>(humidity.value);
    }
    if (rainChance.present) {
      map['rain_chance'] = Variable<int>(rainChance.value);
    }
    if (isDay.present) {
      map['is_day'] = Variable<bool>(isDay.value);
    }
    if (utcOffsetSeconds.present) {
      map['utc_offset_seconds'] = Variable<int>(utcOffsetSeconds.value);
    }
    if (fetchedAt.present) {
      map['fetched_at'] = Variable<DateTime>(fetchedAt.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('CurrentWeatherCacheCompanion(')
          ..write('locationKey: $locationKey, ')
          ..write('cityName: $cityName, ')
          ..write('temperature: $temperature, ')
          ..write('weatherCode: $weatherCode, ')
          ..write('windSpeed: $windSpeed, ')
          ..write('humidity: $humidity, ')
          ..write('rainChance: $rainChance, ')
          ..write('isDay: $isDay, ')
          ..write('utcOffsetSeconds: $utcOffsetSeconds, ')
          ..write('fetchedAt: $fetchedAt, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $HourlyWeatherCacheTable extends HourlyWeatherCache
    with TableInfo<$HourlyWeatherCacheTable, HourlyWeatherEntry> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $HourlyWeatherCacheTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _locationKeyMeta = const VerificationMeta(
    'locationKey',
  );
  @override
  late final GeneratedColumn<String> locationKey = GeneratedColumn<String>(
    'location_key',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _timeMeta = const VerificationMeta('time');
  @override
  late final GeneratedColumn<DateTime> time = GeneratedColumn<DateTime>(
    'time',
    aliasedName,
    false,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _temperatureMeta = const VerificationMeta(
    'temperature',
  );
  @override
  late final GeneratedColumn<double> temperature = GeneratedColumn<double>(
    'temperature',
    aliasedName,
    false,
    type: DriftSqlType.double,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _weatherCodeMeta = const VerificationMeta(
    'weatherCode',
  );
  @override
  late final GeneratedColumn<int> weatherCode = GeneratedColumn<int>(
    'weather_code',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _isDayMeta = const VerificationMeta('isDay');
  @override
  late final GeneratedColumn<bool> isDay = GeneratedColumn<bool>(
    'is_day',
    aliasedName,
    false,
    type: DriftSqlType.bool,
    requiredDuringInsert: true,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'CHECK ("is_day" IN (0, 1))',
    ),
  );
  @override
  List<GeneratedColumn> get $columns => [
    locationKey,
    time,
    temperature,
    weatherCode,
    isDay,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'hourly_weather_cache';
  @override
  VerificationContext validateIntegrity(
    Insertable<HourlyWeatherEntry> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('location_key')) {
      context.handle(
        _locationKeyMeta,
        locationKey.isAcceptableOrUnknown(
          data['location_key']!,
          _locationKeyMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_locationKeyMeta);
    }
    if (data.containsKey('time')) {
      context.handle(
        _timeMeta,
        time.isAcceptableOrUnknown(data['time']!, _timeMeta),
      );
    } else if (isInserting) {
      context.missing(_timeMeta);
    }
    if (data.containsKey('temperature')) {
      context.handle(
        _temperatureMeta,
        temperature.isAcceptableOrUnknown(
          data['temperature']!,
          _temperatureMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_temperatureMeta);
    }
    if (data.containsKey('weather_code')) {
      context.handle(
        _weatherCodeMeta,
        weatherCode.isAcceptableOrUnknown(
          data['weather_code']!,
          _weatherCodeMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_weatherCodeMeta);
    }
    if (data.containsKey('is_day')) {
      context.handle(
        _isDayMeta,
        isDay.isAcceptableOrUnknown(data['is_day']!, _isDayMeta),
      );
    } else if (isInserting) {
      context.missing(_isDayMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {locationKey, time};
  @override
  HourlyWeatherEntry map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return HourlyWeatherEntry(
      locationKey: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}location_key'],
      )!,
      time: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}time'],
      )!,
      temperature: attachedDatabase.typeMapping.read(
        DriftSqlType.double,
        data['${effectivePrefix}temperature'],
      )!,
      weatherCode: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}weather_code'],
      )!,
      isDay: attachedDatabase.typeMapping.read(
        DriftSqlType.bool,
        data['${effectivePrefix}is_day'],
      )!,
    );
  }

  @override
  $HourlyWeatherCacheTable createAlias(String alias) {
    return $HourlyWeatherCacheTable(attachedDatabase, alias);
  }
}

class HourlyWeatherEntry extends DataClass
    implements Insertable<HourlyWeatherEntry> {
  final String locationKey;
  final DateTime time;
  final double temperature;
  final int weatherCode;
  final bool isDay;
  const HourlyWeatherEntry({
    required this.locationKey,
    required this.time,
    required this.temperature,
    required this.weatherCode,
    required this.isDay,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['location_key'] = Variable<String>(locationKey);
    map['time'] = Variable<DateTime>(time);
    map['temperature'] = Variable<double>(temperature);
    map['weather_code'] = Variable<int>(weatherCode);
    map['is_day'] = Variable<bool>(isDay);
    return map;
  }

  HourlyWeatherCacheCompanion toCompanion(bool nullToAbsent) {
    return HourlyWeatherCacheCompanion(
      locationKey: Value(locationKey),
      time: Value(time),
      temperature: Value(temperature),
      weatherCode: Value(weatherCode),
      isDay: Value(isDay),
    );
  }

  factory HourlyWeatherEntry.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return HourlyWeatherEntry(
      locationKey: serializer.fromJson<String>(json['locationKey']),
      time: serializer.fromJson<DateTime>(json['time']),
      temperature: serializer.fromJson<double>(json['temperature']),
      weatherCode: serializer.fromJson<int>(json['weatherCode']),
      isDay: serializer.fromJson<bool>(json['isDay']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'locationKey': serializer.toJson<String>(locationKey),
      'time': serializer.toJson<DateTime>(time),
      'temperature': serializer.toJson<double>(temperature),
      'weatherCode': serializer.toJson<int>(weatherCode),
      'isDay': serializer.toJson<bool>(isDay),
    };
  }

  HourlyWeatherEntry copyWith({
    String? locationKey,
    DateTime? time,
    double? temperature,
    int? weatherCode,
    bool? isDay,
  }) => HourlyWeatherEntry(
    locationKey: locationKey ?? this.locationKey,
    time: time ?? this.time,
    temperature: temperature ?? this.temperature,
    weatherCode: weatherCode ?? this.weatherCode,
    isDay: isDay ?? this.isDay,
  );
  HourlyWeatherEntry copyWithCompanion(HourlyWeatherCacheCompanion data) {
    return HourlyWeatherEntry(
      locationKey: data.locationKey.present
          ? data.locationKey.value
          : this.locationKey,
      time: data.time.present ? data.time.value : this.time,
      temperature: data.temperature.present
          ? data.temperature.value
          : this.temperature,
      weatherCode: data.weatherCode.present
          ? data.weatherCode.value
          : this.weatherCode,
      isDay: data.isDay.present ? data.isDay.value : this.isDay,
    );
  }

  @override
  String toString() {
    return (StringBuffer('HourlyWeatherEntry(')
          ..write('locationKey: $locationKey, ')
          ..write('time: $time, ')
          ..write('temperature: $temperature, ')
          ..write('weatherCode: $weatherCode, ')
          ..write('isDay: $isDay')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode =>
      Object.hash(locationKey, time, temperature, weatherCode, isDay);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is HourlyWeatherEntry &&
          other.locationKey == this.locationKey &&
          other.time == this.time &&
          other.temperature == this.temperature &&
          other.weatherCode == this.weatherCode &&
          other.isDay == this.isDay);
}

class HourlyWeatherCacheCompanion extends UpdateCompanion<HourlyWeatherEntry> {
  final Value<String> locationKey;
  final Value<DateTime> time;
  final Value<double> temperature;
  final Value<int> weatherCode;
  final Value<bool> isDay;
  final Value<int> rowid;
  const HourlyWeatherCacheCompanion({
    this.locationKey = const Value.absent(),
    this.time = const Value.absent(),
    this.temperature = const Value.absent(),
    this.weatherCode = const Value.absent(),
    this.isDay = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  HourlyWeatherCacheCompanion.insert({
    required String locationKey,
    required DateTime time,
    required double temperature,
    required int weatherCode,
    required bool isDay,
    this.rowid = const Value.absent(),
  }) : locationKey = Value(locationKey),
       time = Value(time),
       temperature = Value(temperature),
       weatherCode = Value(weatherCode),
       isDay = Value(isDay);
  static Insertable<HourlyWeatherEntry> custom({
    Expression<String>? locationKey,
    Expression<DateTime>? time,
    Expression<double>? temperature,
    Expression<int>? weatherCode,
    Expression<bool>? isDay,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (locationKey != null) 'location_key': locationKey,
      if (time != null) 'time': time,
      if (temperature != null) 'temperature': temperature,
      if (weatherCode != null) 'weather_code': weatherCode,
      if (isDay != null) 'is_day': isDay,
      if (rowid != null) 'rowid': rowid,
    });
  }

  HourlyWeatherCacheCompanion copyWith({
    Value<String>? locationKey,
    Value<DateTime>? time,
    Value<double>? temperature,
    Value<int>? weatherCode,
    Value<bool>? isDay,
    Value<int>? rowid,
  }) {
    return HourlyWeatherCacheCompanion(
      locationKey: locationKey ?? this.locationKey,
      time: time ?? this.time,
      temperature: temperature ?? this.temperature,
      weatherCode: weatherCode ?? this.weatherCode,
      isDay: isDay ?? this.isDay,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (locationKey.present) {
      map['location_key'] = Variable<String>(locationKey.value);
    }
    if (time.present) {
      map['time'] = Variable<DateTime>(time.value);
    }
    if (temperature.present) {
      map['temperature'] = Variable<double>(temperature.value);
    }
    if (weatherCode.present) {
      map['weather_code'] = Variable<int>(weatherCode.value);
    }
    if (isDay.present) {
      map['is_day'] = Variable<bool>(isDay.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('HourlyWeatherCacheCompanion(')
          ..write('locationKey: $locationKey, ')
          ..write('time: $time, ')
          ..write('temperature: $temperature, ')
          ..write('weatherCode: $weatherCode, ')
          ..write('isDay: $isDay, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $DailyWeatherCacheTable extends DailyWeatherCache
    with TableInfo<$DailyWeatherCacheTable, DailyWeatherEntry> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $DailyWeatherCacheTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _locationKeyMeta = const VerificationMeta(
    'locationKey',
  );
  @override
  late final GeneratedColumn<String> locationKey = GeneratedColumn<String>(
    'location_key',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _dateMeta = const VerificationMeta('date');
  @override
  late final GeneratedColumn<DateTime> date = GeneratedColumn<DateTime>(
    'date',
    aliasedName,
    false,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _weatherCodeMeta = const VerificationMeta(
    'weatherCode',
  );
  @override
  late final GeneratedColumn<int> weatherCode = GeneratedColumn<int>(
    'weather_code',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _maxTempMeta = const VerificationMeta(
    'maxTemp',
  );
  @override
  late final GeneratedColumn<double> maxTemp = GeneratedColumn<double>(
    'max_temp',
    aliasedName,
    false,
    type: DriftSqlType.double,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _minTempMeta = const VerificationMeta(
    'minTemp',
  );
  @override
  late final GeneratedColumn<double> minTemp = GeneratedColumn<double>(
    'min_temp',
    aliasedName,
    false,
    type: DriftSqlType.double,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _windSpeedMeta = const VerificationMeta(
    'windSpeed',
  );
  @override
  late final GeneratedColumn<int> windSpeed = GeneratedColumn<int>(
    'wind_speed',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _humidityMeta = const VerificationMeta(
    'humidity',
  );
  @override
  late final GeneratedColumn<int> humidity = GeneratedColumn<int>(
    'humidity',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _rainChanceMeta = const VerificationMeta(
    'rainChance',
  );
  @override
  late final GeneratedColumn<int> rainChance = GeneratedColumn<int>(
    'rain_chance',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
  );
  @override
  List<GeneratedColumn> get $columns => [
    locationKey,
    date,
    weatherCode,
    maxTemp,
    minTemp,
    windSpeed,
    humidity,
    rainChance,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'daily_weather_cache';
  @override
  VerificationContext validateIntegrity(
    Insertable<DailyWeatherEntry> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('location_key')) {
      context.handle(
        _locationKeyMeta,
        locationKey.isAcceptableOrUnknown(
          data['location_key']!,
          _locationKeyMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_locationKeyMeta);
    }
    if (data.containsKey('date')) {
      context.handle(
        _dateMeta,
        date.isAcceptableOrUnknown(data['date']!, _dateMeta),
      );
    } else if (isInserting) {
      context.missing(_dateMeta);
    }
    if (data.containsKey('weather_code')) {
      context.handle(
        _weatherCodeMeta,
        weatherCode.isAcceptableOrUnknown(
          data['weather_code']!,
          _weatherCodeMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_weatherCodeMeta);
    }
    if (data.containsKey('max_temp')) {
      context.handle(
        _maxTempMeta,
        maxTemp.isAcceptableOrUnknown(data['max_temp']!, _maxTempMeta),
      );
    } else if (isInserting) {
      context.missing(_maxTempMeta);
    }
    if (data.containsKey('min_temp')) {
      context.handle(
        _minTempMeta,
        minTemp.isAcceptableOrUnknown(data['min_temp']!, _minTempMeta),
      );
    } else if (isInserting) {
      context.missing(_minTempMeta);
    }
    if (data.containsKey('wind_speed')) {
      context.handle(
        _windSpeedMeta,
        windSpeed.isAcceptableOrUnknown(data['wind_speed']!, _windSpeedMeta),
      );
    } else if (isInserting) {
      context.missing(_windSpeedMeta);
    }
    if (data.containsKey('humidity')) {
      context.handle(
        _humidityMeta,
        humidity.isAcceptableOrUnknown(data['humidity']!, _humidityMeta),
      );
    } else if (isInserting) {
      context.missing(_humidityMeta);
    }
    if (data.containsKey('rain_chance')) {
      context.handle(
        _rainChanceMeta,
        rainChance.isAcceptableOrUnknown(data['rain_chance']!, _rainChanceMeta),
      );
    } else if (isInserting) {
      context.missing(_rainChanceMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {locationKey, date};
  @override
  DailyWeatherEntry map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return DailyWeatherEntry(
      locationKey: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}location_key'],
      )!,
      date: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}date'],
      )!,
      weatherCode: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}weather_code'],
      )!,
      maxTemp: attachedDatabase.typeMapping.read(
        DriftSqlType.double,
        data['${effectivePrefix}max_temp'],
      )!,
      minTemp: attachedDatabase.typeMapping.read(
        DriftSqlType.double,
        data['${effectivePrefix}min_temp'],
      )!,
      windSpeed: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}wind_speed'],
      )!,
      humidity: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}humidity'],
      )!,
      rainChance: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}rain_chance'],
      )!,
    );
  }

  @override
  $DailyWeatherCacheTable createAlias(String alias) {
    return $DailyWeatherCacheTable(attachedDatabase, alias);
  }
}

class DailyWeatherEntry extends DataClass
    implements Insertable<DailyWeatherEntry> {
  final String locationKey;
  final DateTime date;
  final int weatherCode;
  final double maxTemp;
  final double minTemp;
  final int windSpeed;
  final int humidity;
  final int rainChance;
  const DailyWeatherEntry({
    required this.locationKey,
    required this.date,
    required this.weatherCode,
    required this.maxTemp,
    required this.minTemp,
    required this.windSpeed,
    required this.humidity,
    required this.rainChance,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['location_key'] = Variable<String>(locationKey);
    map['date'] = Variable<DateTime>(date);
    map['weather_code'] = Variable<int>(weatherCode);
    map['max_temp'] = Variable<double>(maxTemp);
    map['min_temp'] = Variable<double>(minTemp);
    map['wind_speed'] = Variable<int>(windSpeed);
    map['humidity'] = Variable<int>(humidity);
    map['rain_chance'] = Variable<int>(rainChance);
    return map;
  }

  DailyWeatherCacheCompanion toCompanion(bool nullToAbsent) {
    return DailyWeatherCacheCompanion(
      locationKey: Value(locationKey),
      date: Value(date),
      weatherCode: Value(weatherCode),
      maxTemp: Value(maxTemp),
      minTemp: Value(minTemp),
      windSpeed: Value(windSpeed),
      humidity: Value(humidity),
      rainChance: Value(rainChance),
    );
  }

  factory DailyWeatherEntry.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return DailyWeatherEntry(
      locationKey: serializer.fromJson<String>(json['locationKey']),
      date: serializer.fromJson<DateTime>(json['date']),
      weatherCode: serializer.fromJson<int>(json['weatherCode']),
      maxTemp: serializer.fromJson<double>(json['maxTemp']),
      minTemp: serializer.fromJson<double>(json['minTemp']),
      windSpeed: serializer.fromJson<int>(json['windSpeed']),
      humidity: serializer.fromJson<int>(json['humidity']),
      rainChance: serializer.fromJson<int>(json['rainChance']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'locationKey': serializer.toJson<String>(locationKey),
      'date': serializer.toJson<DateTime>(date),
      'weatherCode': serializer.toJson<int>(weatherCode),
      'maxTemp': serializer.toJson<double>(maxTemp),
      'minTemp': serializer.toJson<double>(minTemp),
      'windSpeed': serializer.toJson<int>(windSpeed),
      'humidity': serializer.toJson<int>(humidity),
      'rainChance': serializer.toJson<int>(rainChance),
    };
  }

  DailyWeatherEntry copyWith({
    String? locationKey,
    DateTime? date,
    int? weatherCode,
    double? maxTemp,
    double? minTemp,
    int? windSpeed,
    int? humidity,
    int? rainChance,
  }) => DailyWeatherEntry(
    locationKey: locationKey ?? this.locationKey,
    date: date ?? this.date,
    weatherCode: weatherCode ?? this.weatherCode,
    maxTemp: maxTemp ?? this.maxTemp,
    minTemp: minTemp ?? this.minTemp,
    windSpeed: windSpeed ?? this.windSpeed,
    humidity: humidity ?? this.humidity,
    rainChance: rainChance ?? this.rainChance,
  );
  DailyWeatherEntry copyWithCompanion(DailyWeatherCacheCompanion data) {
    return DailyWeatherEntry(
      locationKey: data.locationKey.present
          ? data.locationKey.value
          : this.locationKey,
      date: data.date.present ? data.date.value : this.date,
      weatherCode: data.weatherCode.present
          ? data.weatherCode.value
          : this.weatherCode,
      maxTemp: data.maxTemp.present ? data.maxTemp.value : this.maxTemp,
      minTemp: data.minTemp.present ? data.minTemp.value : this.minTemp,
      windSpeed: data.windSpeed.present ? data.windSpeed.value : this.windSpeed,
      humidity: data.humidity.present ? data.humidity.value : this.humidity,
      rainChance: data.rainChance.present
          ? data.rainChance.value
          : this.rainChance,
    );
  }

  @override
  String toString() {
    return (StringBuffer('DailyWeatherEntry(')
          ..write('locationKey: $locationKey, ')
          ..write('date: $date, ')
          ..write('weatherCode: $weatherCode, ')
          ..write('maxTemp: $maxTemp, ')
          ..write('minTemp: $minTemp, ')
          ..write('windSpeed: $windSpeed, ')
          ..write('humidity: $humidity, ')
          ..write('rainChance: $rainChance')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
    locationKey,
    date,
    weatherCode,
    maxTemp,
    minTemp,
    windSpeed,
    humidity,
    rainChance,
  );
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is DailyWeatherEntry &&
          other.locationKey == this.locationKey &&
          other.date == this.date &&
          other.weatherCode == this.weatherCode &&
          other.maxTemp == this.maxTemp &&
          other.minTemp == this.minTemp &&
          other.windSpeed == this.windSpeed &&
          other.humidity == this.humidity &&
          other.rainChance == this.rainChance);
}

class DailyWeatherCacheCompanion extends UpdateCompanion<DailyWeatherEntry> {
  final Value<String> locationKey;
  final Value<DateTime> date;
  final Value<int> weatherCode;
  final Value<double> maxTemp;
  final Value<double> minTemp;
  final Value<int> windSpeed;
  final Value<int> humidity;
  final Value<int> rainChance;
  final Value<int> rowid;
  const DailyWeatherCacheCompanion({
    this.locationKey = const Value.absent(),
    this.date = const Value.absent(),
    this.weatherCode = const Value.absent(),
    this.maxTemp = const Value.absent(),
    this.minTemp = const Value.absent(),
    this.windSpeed = const Value.absent(),
    this.humidity = const Value.absent(),
    this.rainChance = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  DailyWeatherCacheCompanion.insert({
    required String locationKey,
    required DateTime date,
    required int weatherCode,
    required double maxTemp,
    required double minTemp,
    required int windSpeed,
    required int humidity,
    required int rainChance,
    this.rowid = const Value.absent(),
  }) : locationKey = Value(locationKey),
       date = Value(date),
       weatherCode = Value(weatherCode),
       maxTemp = Value(maxTemp),
       minTemp = Value(minTemp),
       windSpeed = Value(windSpeed),
       humidity = Value(humidity),
       rainChance = Value(rainChance);
  static Insertable<DailyWeatherEntry> custom({
    Expression<String>? locationKey,
    Expression<DateTime>? date,
    Expression<int>? weatherCode,
    Expression<double>? maxTemp,
    Expression<double>? minTemp,
    Expression<int>? windSpeed,
    Expression<int>? humidity,
    Expression<int>? rainChance,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (locationKey != null) 'location_key': locationKey,
      if (date != null) 'date': date,
      if (weatherCode != null) 'weather_code': weatherCode,
      if (maxTemp != null) 'max_temp': maxTemp,
      if (minTemp != null) 'min_temp': minTemp,
      if (windSpeed != null) 'wind_speed': windSpeed,
      if (humidity != null) 'humidity': humidity,
      if (rainChance != null) 'rain_chance': rainChance,
      if (rowid != null) 'rowid': rowid,
    });
  }

  DailyWeatherCacheCompanion copyWith({
    Value<String>? locationKey,
    Value<DateTime>? date,
    Value<int>? weatherCode,
    Value<double>? maxTemp,
    Value<double>? minTemp,
    Value<int>? windSpeed,
    Value<int>? humidity,
    Value<int>? rainChance,
    Value<int>? rowid,
  }) {
    return DailyWeatherCacheCompanion(
      locationKey: locationKey ?? this.locationKey,
      date: date ?? this.date,
      weatherCode: weatherCode ?? this.weatherCode,
      maxTemp: maxTemp ?? this.maxTemp,
      minTemp: minTemp ?? this.minTemp,
      windSpeed: windSpeed ?? this.windSpeed,
      humidity: humidity ?? this.humidity,
      rainChance: rainChance ?? this.rainChance,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (locationKey.present) {
      map['location_key'] = Variable<String>(locationKey.value);
    }
    if (date.present) {
      map['date'] = Variable<DateTime>(date.value);
    }
    if (weatherCode.present) {
      map['weather_code'] = Variable<int>(weatherCode.value);
    }
    if (maxTemp.present) {
      map['max_temp'] = Variable<double>(maxTemp.value);
    }
    if (minTemp.present) {
      map['min_temp'] = Variable<double>(minTemp.value);
    }
    if (windSpeed.present) {
      map['wind_speed'] = Variable<int>(windSpeed.value);
    }
    if (humidity.present) {
      map['humidity'] = Variable<int>(humidity.value);
    }
    if (rainChance.present) {
      map['rain_chance'] = Variable<int>(rainChance.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('DailyWeatherCacheCompanion(')
          ..write('locationKey: $locationKey, ')
          ..write('date: $date, ')
          ..write('weatherCode: $weatherCode, ')
          ..write('maxTemp: $maxTemp, ')
          ..write('minTemp: $minTemp, ')
          ..write('windSpeed: $windSpeed, ')
          ..write('humidity: $humidity, ')
          ..write('rainChance: $rainChance, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

abstract class _$AppDatabase extends GeneratedDatabase {
  _$AppDatabase(QueryExecutor e) : super(e);
  $AppDatabaseManager get managers => $AppDatabaseManager(this);
  late final $CurrentWeatherCacheTable currentWeatherCache =
      $CurrentWeatherCacheTable(this);
  late final $HourlyWeatherCacheTable hourlyWeatherCache =
      $HourlyWeatherCacheTable(this);
  late final $DailyWeatherCacheTable dailyWeatherCache =
      $DailyWeatherCacheTable(this);
  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [
    currentWeatherCache,
    hourlyWeatherCache,
    dailyWeatherCache,
  ];
}

typedef $$CurrentWeatherCacheTableCreateCompanionBuilder =
    CurrentWeatherCacheCompanion Function({
      required String locationKey,
      required String cityName,
      required double temperature,
      required int weatherCode,
      required int windSpeed,
      required int humidity,
      Value<int?> rainChance,
      required bool isDay,
      required int utcOffsetSeconds,
      required DateTime fetchedAt,
      Value<int> rowid,
    });
typedef $$CurrentWeatherCacheTableUpdateCompanionBuilder =
    CurrentWeatherCacheCompanion Function({
      Value<String> locationKey,
      Value<String> cityName,
      Value<double> temperature,
      Value<int> weatherCode,
      Value<int> windSpeed,
      Value<int> humidity,
      Value<int?> rainChance,
      Value<bool> isDay,
      Value<int> utcOffsetSeconds,
      Value<DateTime> fetchedAt,
      Value<int> rowid,
    });

class $$CurrentWeatherCacheTableFilterComposer
    extends Composer<_$AppDatabase, $CurrentWeatherCacheTable> {
  $$CurrentWeatherCacheTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get locationKey => $composableBuilder(
    column: $table.locationKey,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get cityName => $composableBuilder(
    column: $table.cityName,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<double> get temperature => $composableBuilder(
    column: $table.temperature,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get weatherCode => $composableBuilder(
    column: $table.weatherCode,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get windSpeed => $composableBuilder(
    column: $table.windSpeed,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get humidity => $composableBuilder(
    column: $table.humidity,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get rainChance => $composableBuilder(
    column: $table.rainChance,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<bool> get isDay => $composableBuilder(
    column: $table.isDay,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get utcOffsetSeconds => $composableBuilder(
    column: $table.utcOffsetSeconds,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get fetchedAt => $composableBuilder(
    column: $table.fetchedAt,
    builder: (column) => ColumnFilters(column),
  );
}

class $$CurrentWeatherCacheTableOrderingComposer
    extends Composer<_$AppDatabase, $CurrentWeatherCacheTable> {
  $$CurrentWeatherCacheTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get locationKey => $composableBuilder(
    column: $table.locationKey,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get cityName => $composableBuilder(
    column: $table.cityName,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<double> get temperature => $composableBuilder(
    column: $table.temperature,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get weatherCode => $composableBuilder(
    column: $table.weatherCode,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get windSpeed => $composableBuilder(
    column: $table.windSpeed,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get humidity => $composableBuilder(
    column: $table.humidity,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get rainChance => $composableBuilder(
    column: $table.rainChance,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<bool> get isDay => $composableBuilder(
    column: $table.isDay,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get utcOffsetSeconds => $composableBuilder(
    column: $table.utcOffsetSeconds,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get fetchedAt => $composableBuilder(
    column: $table.fetchedAt,
    builder: (column) => ColumnOrderings(column),
  );
}

class $$CurrentWeatherCacheTableAnnotationComposer
    extends Composer<_$AppDatabase, $CurrentWeatherCacheTable> {
  $$CurrentWeatherCacheTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get locationKey => $composableBuilder(
    column: $table.locationKey,
    builder: (column) => column,
  );

  GeneratedColumn<String> get cityName =>
      $composableBuilder(column: $table.cityName, builder: (column) => column);

  GeneratedColumn<double> get temperature => $composableBuilder(
    column: $table.temperature,
    builder: (column) => column,
  );

  GeneratedColumn<int> get weatherCode => $composableBuilder(
    column: $table.weatherCode,
    builder: (column) => column,
  );

  GeneratedColumn<int> get windSpeed =>
      $composableBuilder(column: $table.windSpeed, builder: (column) => column);

  GeneratedColumn<int> get humidity =>
      $composableBuilder(column: $table.humidity, builder: (column) => column);

  GeneratedColumn<int> get rainChance => $composableBuilder(
    column: $table.rainChance,
    builder: (column) => column,
  );

  GeneratedColumn<bool> get isDay =>
      $composableBuilder(column: $table.isDay, builder: (column) => column);

  GeneratedColumn<int> get utcOffsetSeconds => $composableBuilder(
    column: $table.utcOffsetSeconds,
    builder: (column) => column,
  );

  GeneratedColumn<DateTime> get fetchedAt =>
      $composableBuilder(column: $table.fetchedAt, builder: (column) => column);
}

class $$CurrentWeatherCacheTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $CurrentWeatherCacheTable,
          CurrentWeatherEntry,
          $$CurrentWeatherCacheTableFilterComposer,
          $$CurrentWeatherCacheTableOrderingComposer,
          $$CurrentWeatherCacheTableAnnotationComposer,
          $$CurrentWeatherCacheTableCreateCompanionBuilder,
          $$CurrentWeatherCacheTableUpdateCompanionBuilder,
          (
            CurrentWeatherEntry,
            BaseReferences<
              _$AppDatabase,
              $CurrentWeatherCacheTable,
              CurrentWeatherEntry
            >,
          ),
          CurrentWeatherEntry,
          PrefetchHooks Function()
        > {
  $$CurrentWeatherCacheTableTableManager(
    _$AppDatabase db,
    $CurrentWeatherCacheTable table,
  ) : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$CurrentWeatherCacheTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$CurrentWeatherCacheTableOrderingComposer(
                $db: db,
                $table: table,
              ),
          createComputedFieldComposer: () =>
              $$CurrentWeatherCacheTableAnnotationComposer(
                $db: db,
                $table: table,
              ),
          updateCompanionCallback:
              ({
                Value<String> locationKey = const Value.absent(),
                Value<String> cityName = const Value.absent(),
                Value<double> temperature = const Value.absent(),
                Value<int> weatherCode = const Value.absent(),
                Value<int> windSpeed = const Value.absent(),
                Value<int> humidity = const Value.absent(),
                Value<int?> rainChance = const Value.absent(),
                Value<bool> isDay = const Value.absent(),
                Value<int> utcOffsetSeconds = const Value.absent(),
                Value<DateTime> fetchedAt = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => CurrentWeatherCacheCompanion(
                locationKey: locationKey,
                cityName: cityName,
                temperature: temperature,
                weatherCode: weatherCode,
                windSpeed: windSpeed,
                humidity: humidity,
                rainChance: rainChance,
                isDay: isDay,
                utcOffsetSeconds: utcOffsetSeconds,
                fetchedAt: fetchedAt,
                rowid: rowid,
              ),
          createCompanionCallback:
              ({
                required String locationKey,
                required String cityName,
                required double temperature,
                required int weatherCode,
                required int windSpeed,
                required int humidity,
                Value<int?> rainChance = const Value.absent(),
                required bool isDay,
                required int utcOffsetSeconds,
                required DateTime fetchedAt,
                Value<int> rowid = const Value.absent(),
              }) => CurrentWeatherCacheCompanion.insert(
                locationKey: locationKey,
                cityName: cityName,
                temperature: temperature,
                weatherCode: weatherCode,
                windSpeed: windSpeed,
                humidity: humidity,
                rainChance: rainChance,
                isDay: isDay,
                utcOffsetSeconds: utcOffsetSeconds,
                fetchedAt: fetchedAt,
                rowid: rowid,
              ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ),
      );
}

typedef $$CurrentWeatherCacheTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $CurrentWeatherCacheTable,
      CurrentWeatherEntry,
      $$CurrentWeatherCacheTableFilterComposer,
      $$CurrentWeatherCacheTableOrderingComposer,
      $$CurrentWeatherCacheTableAnnotationComposer,
      $$CurrentWeatherCacheTableCreateCompanionBuilder,
      $$CurrentWeatherCacheTableUpdateCompanionBuilder,
      (
        CurrentWeatherEntry,
        BaseReferences<
          _$AppDatabase,
          $CurrentWeatherCacheTable,
          CurrentWeatherEntry
        >,
      ),
      CurrentWeatherEntry,
      PrefetchHooks Function()
    >;
typedef $$HourlyWeatherCacheTableCreateCompanionBuilder =
    HourlyWeatherCacheCompanion Function({
      required String locationKey,
      required DateTime time,
      required double temperature,
      required int weatherCode,
      required bool isDay,
      Value<int> rowid,
    });
typedef $$HourlyWeatherCacheTableUpdateCompanionBuilder =
    HourlyWeatherCacheCompanion Function({
      Value<String> locationKey,
      Value<DateTime> time,
      Value<double> temperature,
      Value<int> weatherCode,
      Value<bool> isDay,
      Value<int> rowid,
    });

class $$HourlyWeatherCacheTableFilterComposer
    extends Composer<_$AppDatabase, $HourlyWeatherCacheTable> {
  $$HourlyWeatherCacheTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get locationKey => $composableBuilder(
    column: $table.locationKey,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get time => $composableBuilder(
    column: $table.time,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<double> get temperature => $composableBuilder(
    column: $table.temperature,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get weatherCode => $composableBuilder(
    column: $table.weatherCode,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<bool> get isDay => $composableBuilder(
    column: $table.isDay,
    builder: (column) => ColumnFilters(column),
  );
}

class $$HourlyWeatherCacheTableOrderingComposer
    extends Composer<_$AppDatabase, $HourlyWeatherCacheTable> {
  $$HourlyWeatherCacheTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get locationKey => $composableBuilder(
    column: $table.locationKey,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get time => $composableBuilder(
    column: $table.time,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<double> get temperature => $composableBuilder(
    column: $table.temperature,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get weatherCode => $composableBuilder(
    column: $table.weatherCode,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<bool> get isDay => $composableBuilder(
    column: $table.isDay,
    builder: (column) => ColumnOrderings(column),
  );
}

class $$HourlyWeatherCacheTableAnnotationComposer
    extends Composer<_$AppDatabase, $HourlyWeatherCacheTable> {
  $$HourlyWeatherCacheTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get locationKey => $composableBuilder(
    column: $table.locationKey,
    builder: (column) => column,
  );

  GeneratedColumn<DateTime> get time =>
      $composableBuilder(column: $table.time, builder: (column) => column);

  GeneratedColumn<double> get temperature => $composableBuilder(
    column: $table.temperature,
    builder: (column) => column,
  );

  GeneratedColumn<int> get weatherCode => $composableBuilder(
    column: $table.weatherCode,
    builder: (column) => column,
  );

  GeneratedColumn<bool> get isDay =>
      $composableBuilder(column: $table.isDay, builder: (column) => column);
}

class $$HourlyWeatherCacheTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $HourlyWeatherCacheTable,
          HourlyWeatherEntry,
          $$HourlyWeatherCacheTableFilterComposer,
          $$HourlyWeatherCacheTableOrderingComposer,
          $$HourlyWeatherCacheTableAnnotationComposer,
          $$HourlyWeatherCacheTableCreateCompanionBuilder,
          $$HourlyWeatherCacheTableUpdateCompanionBuilder,
          (
            HourlyWeatherEntry,
            BaseReferences<
              _$AppDatabase,
              $HourlyWeatherCacheTable,
              HourlyWeatherEntry
            >,
          ),
          HourlyWeatherEntry,
          PrefetchHooks Function()
        > {
  $$HourlyWeatherCacheTableTableManager(
    _$AppDatabase db,
    $HourlyWeatherCacheTable table,
  ) : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$HourlyWeatherCacheTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$HourlyWeatherCacheTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$HourlyWeatherCacheTableAnnotationComposer(
                $db: db,
                $table: table,
              ),
          updateCompanionCallback:
              ({
                Value<String> locationKey = const Value.absent(),
                Value<DateTime> time = const Value.absent(),
                Value<double> temperature = const Value.absent(),
                Value<int> weatherCode = const Value.absent(),
                Value<bool> isDay = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => HourlyWeatherCacheCompanion(
                locationKey: locationKey,
                time: time,
                temperature: temperature,
                weatherCode: weatherCode,
                isDay: isDay,
                rowid: rowid,
              ),
          createCompanionCallback:
              ({
                required String locationKey,
                required DateTime time,
                required double temperature,
                required int weatherCode,
                required bool isDay,
                Value<int> rowid = const Value.absent(),
              }) => HourlyWeatherCacheCompanion.insert(
                locationKey: locationKey,
                time: time,
                temperature: temperature,
                weatherCode: weatherCode,
                isDay: isDay,
                rowid: rowid,
              ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ),
      );
}

typedef $$HourlyWeatherCacheTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $HourlyWeatherCacheTable,
      HourlyWeatherEntry,
      $$HourlyWeatherCacheTableFilterComposer,
      $$HourlyWeatherCacheTableOrderingComposer,
      $$HourlyWeatherCacheTableAnnotationComposer,
      $$HourlyWeatherCacheTableCreateCompanionBuilder,
      $$HourlyWeatherCacheTableUpdateCompanionBuilder,
      (
        HourlyWeatherEntry,
        BaseReferences<
          _$AppDatabase,
          $HourlyWeatherCacheTable,
          HourlyWeatherEntry
        >,
      ),
      HourlyWeatherEntry,
      PrefetchHooks Function()
    >;
typedef $$DailyWeatherCacheTableCreateCompanionBuilder =
    DailyWeatherCacheCompanion Function({
      required String locationKey,
      required DateTime date,
      required int weatherCode,
      required double maxTemp,
      required double minTemp,
      required int windSpeed,
      required int humidity,
      required int rainChance,
      Value<int> rowid,
    });
typedef $$DailyWeatherCacheTableUpdateCompanionBuilder =
    DailyWeatherCacheCompanion Function({
      Value<String> locationKey,
      Value<DateTime> date,
      Value<int> weatherCode,
      Value<double> maxTemp,
      Value<double> minTemp,
      Value<int> windSpeed,
      Value<int> humidity,
      Value<int> rainChance,
      Value<int> rowid,
    });

class $$DailyWeatherCacheTableFilterComposer
    extends Composer<_$AppDatabase, $DailyWeatherCacheTable> {
  $$DailyWeatherCacheTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get locationKey => $composableBuilder(
    column: $table.locationKey,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get date => $composableBuilder(
    column: $table.date,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get weatherCode => $composableBuilder(
    column: $table.weatherCode,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<double> get maxTemp => $composableBuilder(
    column: $table.maxTemp,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<double> get minTemp => $composableBuilder(
    column: $table.minTemp,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get windSpeed => $composableBuilder(
    column: $table.windSpeed,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get humidity => $composableBuilder(
    column: $table.humidity,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get rainChance => $composableBuilder(
    column: $table.rainChance,
    builder: (column) => ColumnFilters(column),
  );
}

class $$DailyWeatherCacheTableOrderingComposer
    extends Composer<_$AppDatabase, $DailyWeatherCacheTable> {
  $$DailyWeatherCacheTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get locationKey => $composableBuilder(
    column: $table.locationKey,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get date => $composableBuilder(
    column: $table.date,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get weatherCode => $composableBuilder(
    column: $table.weatherCode,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<double> get maxTemp => $composableBuilder(
    column: $table.maxTemp,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<double> get minTemp => $composableBuilder(
    column: $table.minTemp,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get windSpeed => $composableBuilder(
    column: $table.windSpeed,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get humidity => $composableBuilder(
    column: $table.humidity,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get rainChance => $composableBuilder(
    column: $table.rainChance,
    builder: (column) => ColumnOrderings(column),
  );
}

class $$DailyWeatherCacheTableAnnotationComposer
    extends Composer<_$AppDatabase, $DailyWeatherCacheTable> {
  $$DailyWeatherCacheTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get locationKey => $composableBuilder(
    column: $table.locationKey,
    builder: (column) => column,
  );

  GeneratedColumn<DateTime> get date =>
      $composableBuilder(column: $table.date, builder: (column) => column);

  GeneratedColumn<int> get weatherCode => $composableBuilder(
    column: $table.weatherCode,
    builder: (column) => column,
  );

  GeneratedColumn<double> get maxTemp =>
      $composableBuilder(column: $table.maxTemp, builder: (column) => column);

  GeneratedColumn<double> get minTemp =>
      $composableBuilder(column: $table.minTemp, builder: (column) => column);

  GeneratedColumn<int> get windSpeed =>
      $composableBuilder(column: $table.windSpeed, builder: (column) => column);

  GeneratedColumn<int> get humidity =>
      $composableBuilder(column: $table.humidity, builder: (column) => column);

  GeneratedColumn<int> get rainChance => $composableBuilder(
    column: $table.rainChance,
    builder: (column) => column,
  );
}

class $$DailyWeatherCacheTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $DailyWeatherCacheTable,
          DailyWeatherEntry,
          $$DailyWeatherCacheTableFilterComposer,
          $$DailyWeatherCacheTableOrderingComposer,
          $$DailyWeatherCacheTableAnnotationComposer,
          $$DailyWeatherCacheTableCreateCompanionBuilder,
          $$DailyWeatherCacheTableUpdateCompanionBuilder,
          (
            DailyWeatherEntry,
            BaseReferences<
              _$AppDatabase,
              $DailyWeatherCacheTable,
              DailyWeatherEntry
            >,
          ),
          DailyWeatherEntry,
          PrefetchHooks Function()
        > {
  $$DailyWeatherCacheTableTableManager(
    _$AppDatabase db,
    $DailyWeatherCacheTable table,
  ) : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$DailyWeatherCacheTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$DailyWeatherCacheTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$DailyWeatherCacheTableAnnotationComposer(
                $db: db,
                $table: table,
              ),
          updateCompanionCallback:
              ({
                Value<String> locationKey = const Value.absent(),
                Value<DateTime> date = const Value.absent(),
                Value<int> weatherCode = const Value.absent(),
                Value<double> maxTemp = const Value.absent(),
                Value<double> minTemp = const Value.absent(),
                Value<int> windSpeed = const Value.absent(),
                Value<int> humidity = const Value.absent(),
                Value<int> rainChance = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => DailyWeatherCacheCompanion(
                locationKey: locationKey,
                date: date,
                weatherCode: weatherCode,
                maxTemp: maxTemp,
                minTemp: minTemp,
                windSpeed: windSpeed,
                humidity: humidity,
                rainChance: rainChance,
                rowid: rowid,
              ),
          createCompanionCallback:
              ({
                required String locationKey,
                required DateTime date,
                required int weatherCode,
                required double maxTemp,
                required double minTemp,
                required int windSpeed,
                required int humidity,
                required int rainChance,
                Value<int> rowid = const Value.absent(),
              }) => DailyWeatherCacheCompanion.insert(
                locationKey: locationKey,
                date: date,
                weatherCode: weatherCode,
                maxTemp: maxTemp,
                minTemp: minTemp,
                windSpeed: windSpeed,
                humidity: humidity,
                rainChance: rainChance,
                rowid: rowid,
              ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ),
      );
}

typedef $$DailyWeatherCacheTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $DailyWeatherCacheTable,
      DailyWeatherEntry,
      $$DailyWeatherCacheTableFilterComposer,
      $$DailyWeatherCacheTableOrderingComposer,
      $$DailyWeatherCacheTableAnnotationComposer,
      $$DailyWeatherCacheTableCreateCompanionBuilder,
      $$DailyWeatherCacheTableUpdateCompanionBuilder,
      (
        DailyWeatherEntry,
        BaseReferences<
          _$AppDatabase,
          $DailyWeatherCacheTable,
          DailyWeatherEntry
        >,
      ),
      DailyWeatherEntry,
      PrefetchHooks Function()
    >;

class $AppDatabaseManager {
  final _$AppDatabase _db;
  $AppDatabaseManager(this._db);
  $$CurrentWeatherCacheTableTableManager get currentWeatherCache =>
      $$CurrentWeatherCacheTableTableManager(_db, _db.currentWeatherCache);
  $$HourlyWeatherCacheTableTableManager get hourlyWeatherCache =>
      $$HourlyWeatherCacheTableTableManager(_db, _db.hourlyWeatherCache);
  $$DailyWeatherCacheTableTableManager get dailyWeatherCache =>
      $$DailyWeatherCacheTableTableManager(_db, _db.dailyWeatherCache);
}
