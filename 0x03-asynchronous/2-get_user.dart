import '2-main.dart';
import '1-main.dart';

Future<void> getUser() async {
  try {
    await fetchUser();
  } catch(e) {
    print("error caught: ${e}");
  }
}
