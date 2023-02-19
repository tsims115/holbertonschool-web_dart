class Password {
  String _password = "";
  Password({password}) {
    _password = password;
  }
  bool isValid() {
    return RegExp(r'^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)[a-zA-Z\d]{8,16}$')
      .hasMatch(_password);
  }

  String get password {
    return _password;
  }
  void set password(password) {
    _password = password;
  }

  @override
  String toString() {
    return "Your Password is: ${_password}";
  }
}
