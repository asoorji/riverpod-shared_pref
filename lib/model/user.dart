class UserProfile {
  String name;
  String phone;
  String email;
  int age;

  UserProfile({
    required this.name,
    required this.phone,
    required this.email,
    required this.age,
  });

  Map<String, dynamic> toJson() {
    return {'name': name, 'phone': phone, 'email': email, 'age': age};
  }

  factory UserProfile.fromJson(Map<String, dynamic> json) {
    return UserProfile(
      name: json['name'],
      phone: json['phone'],
      email: json['email'],
      age: json['age'],
    );
  }
}
