class GeoLocationModel {
  double? lat, long;
  GeoLocationModel({required this.lat, required this.long});
  GeoLocationModel.fromJson(Map<String, dynamic> json) {
    lat = json['lat'];
    long = json['long'];
  }
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['lat'] = lat;
    data['long'] = long;
    return data;
  }
}
