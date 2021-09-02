class RadioItems {
  String name ;
  // ignore: non_constant_identifier_names
  String radio_url;

  RadioItems.fromJson(Map<String , dynamic>  map ):
        name = map["name"]!=null?map["name"]:'',
        radio_url = map["radio_url"]!=null?map["radio_url"]:'';
}