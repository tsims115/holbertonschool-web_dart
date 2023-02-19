class Password {
  String _password;
  Password({this._password: ""});
  bool isValid() {
    return RegExp(r'^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)[a-zA-Z\d]{8,16}$').hasMatch(this._password);
  }

  @override
  String toString() {
    return "Your Password is: ${this._password}";
  }
}
