import '2-main.dart';

Future<void> getUser() async {
  try {
    await fetchUser();
  } catch(e) {
    print("error caught: ${e}");
  }
}
