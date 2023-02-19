class User {
  String name;
  int age;
  double height;
  int id;
  User({this.name: "", this.age: 0, this.height: 0, this.id: 0});
  String showName() {
    return "Hello ${this.name}";
  }
  Map toJson() {
    return {'id': this.id, 'name': this.name, 'age': this.age, 'height': this.height};
  }

  static User fromJson(Map<dynamic, dynamic> userJson) {
    return new User(id: userJson['id'], name: userJson['name'], age: userJson['age'], height: userJson['height']);
  }
  String toString() {
    return "User(id : ${this.id} ,name: ${this.name},  age: ${this.age}, height: ${this.height})";
  }
}
