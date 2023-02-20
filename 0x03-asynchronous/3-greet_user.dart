import '3-main.dart';

Future<String> greetUser() async {
  try {
    return "Hello " + (await fetchUserData())
      .replaceAll('"', "")
      .split(", ")[1]
      .split(": ")[1].replaceAll("}", "");
  } catch(e) {
    print("error caught: ${e}");
    return "";
  }
}

Future<String> loginUser() async {
  if (await checkCredentials()) {
    return await greetUser();
  } else {
    return "Wrong credentials";
  }
}
