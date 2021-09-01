import 'RadioItems.dart';

class ListOfRadios {
  List<RadioItems> radios;

  ListOfRadios.fromJson(Map<String, dynamic> map):
        radios = List<RadioItems>.from(map["radios"].map((it) => RadioItems.fromJson(it)));
}