class StaffModel {
  String? address, email, name, phone, id;
  bool? active;
  StaffModel({
    required this.id,
    required this.active,
    required this.name,
    required this.email,
    required this.address,
    required this.phone,
  });
  StaffModel.fromJson(Map<String, dynamic> json) {
    id = json['id'].toString();
    active = json['active'];
    name = json['name'];
    email = json['email'];
    address = json['address'];
    phone = json['phone'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['active'] = active;
    data['name'] = name;
    data['email'] = email;
    data['address'] = address;
    data['phone'] = phone;
    return data;
  }
}
