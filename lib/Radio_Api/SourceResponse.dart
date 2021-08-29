
class SourceResponse {
  List<Source> radios;

  SourceResponse.fromJson(Map<String, dynamic> map):
        radios = List<Source>.from(map["radios"].map((it) => Source.fromJson(it)));
}

class Source {
  String name ;
  String radio_url;

  Source.fromJson(Map<String , dynamic>  map ):
        name = map["name"]!=null?map["name"]:'',
        radio_url = map["radio_url"]!=null?map["radio_url"]:'';
}