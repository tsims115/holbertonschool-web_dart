class Password {
  String password;
  Password({this.password: ""});
  bool isValid() {
    return RegExp(r'^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)[a-zA-Z\d]{8,16}$')
      .hasMatch(this.password);
  }

  @override
  String toString() {
    return "Your Password is: ${this.password}";
  }
}
