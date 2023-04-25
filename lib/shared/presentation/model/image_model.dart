class ImageModel {
  String? name, status, uid, url;

  ImageModel({
    required this.name,
    required this.status,
    required this.uid,
    required this.url,
  });
  ImageModel.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    status = json['status'];
    uid = json['uid'];
    url = json['url'];
  }
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['name'] = name;
    data['status'] = status;
    data['uid'] = uid;
    data['url'] = url;
    return data;
  }
}
