class User {
    String name;
    int age;
    double height;
    User({this.name: "", this.age: 0, this.height: 0});
    String showName() {
        return "Hello ${this.name}";
    }
    Map toJson() {
        return {'name': this.name, 'age': this.age, 'height': this.height};
    }
}
