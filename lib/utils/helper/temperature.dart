enum TemperatureUnit { celsius, fahrenheit }

int convertTemperature(double celsius, TemperatureUnit unit) {
  final value = unit == TemperatureUnit.fahrenheit
      ? celsius * 9 / 5 + 32
      : celsius;
  return value.round();
}
