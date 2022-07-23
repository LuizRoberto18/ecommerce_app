class User {
  final int? id;
  final String? userName;
  final String? password;
  final String? fullName;
  final String? email;
  final String? phone;
  final String? address;
  final String? city;
  final String? countryCode;
  final String? photo;
  final int? roleId;
  final DateTime? dateCreated;
  final String? createdBy;

  User({
    this.phone,
    this.address,
    this.city,
    this.countryCode,
    this.photo,
    this.roleId,
    this.dateCreated,
    this.createdBy,
    required this.id,
    required this.userName,
    required this.password,
    required this.fullName,
    required this.email,
  });

  //mapping json data
  factory User.fromJSON(Map<String, dynamic> jsonMap) {
    final data = User(
      id: jsonMap["id"],
      userName: jsonMap["firstName"],
      password: jsonMap["lastName"],
      fullName: jsonMap["firstName"] + jsonMap["lastName"],
      email: jsonMap["email"],
    );
    return data;
  }
}
