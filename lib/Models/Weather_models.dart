class WeatherModels {
  final String cityName;
  final String date;
  final String? image;
  final String temp;
  final String maxTemp;
  final String minTemp;
  final String weatherCondition;

  WeatherModels({
    required this.cityName,
    required this.date,
    this.image,
    required this.temp,
    required this.maxTemp,
    required this.minTemp,
    required this.weatherCondition,
  });

  factory WeatherModels.fromJson(Map<String, dynamic> json) {
    return WeatherModels(
      cityName: json['cityName'] ?? '',
      date: json['date'] ?? '',
      image: json['image'],
      temp: json['temp'] ?? '',
      maxTemp: json['maxTemp'] ?? '',
      minTemp: json['minTemp'] ?? '',
      weatherCondition: json['weatherCondition'] ?? '',
    );
  }
}
