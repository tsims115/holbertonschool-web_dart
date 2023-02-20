Future<String> fetchUserData() => Future.delayed(
      const Duration(seconds: 2),
      () =>
          '{"id" : "7ee9a243-01ca-47c9-aa14-0149789764c3", "username" : "admin"}',
    );

Future<bool> checkCredentials() =>
    Future.delayed(const Duration(seconds: 2), () => true);

Future<String> greetUser() async {
  try {
    return "3.14 Battery street\n\n";
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
