import 'dart:convert';

class Country {
  int id;
  String name;
  List<dynamic> cities;
  Country({
     this.id,
     this.name,
     this.cities,
  });
  



  factory Country.fromMap(Map<String, dynamic> map) {
    return Country(
      id: map['id'],
      name: map['name'],
      cities: List<dynamic>.from(map['cities']),
    );
  }



  factory Country.fromJson(String source) => Country.fromMap(json.decode(source));
}
