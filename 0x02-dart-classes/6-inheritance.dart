import '6-password.dart';

class User extends Password {
  String name;
  int age;
  double height;
  int id;
  String user_password;
  User({this.name: "", this.age: 0, this.height: 0, this.id: 0, this.user_password: ""});
  String showName() {
    return "Hello ${this.name}";
  }
  Map toJson() {
    return {'id': this.id, 'name': this.name, 'age': this.age, 'height': this.height};
  }

  static User fromJson(Map<dynamic, dynamic> userJson) {
    return new User(
      id: userJson['id'],
      name: userJson['name'],
      age: userJson['age'],
      height: userJson['height'],
      user_password: userJson['user_password']);
    }
  String toString() {
    return "User(id : ${this.id}, name: ${this.name}, age: ${this.age}, height: ${this.height}, Password: ${Password(password: this.user_password).isValid()})";
  }
}
