class Password {
  String password;
  Password({this.password: ""});
  bool isValid() {
    int length = this.password.length;
    final numericRegex = RegExp(r'^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)[a-zA-Z\d]{8,}$');
    if (length > 16) {
      return false;
    }
    return numericRegex.hasMatch(this.password);
  }
  
  @override
  String toString() {
    return "Your Password is: ${this.password}";
  }
}
