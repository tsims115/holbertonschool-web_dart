import '1-main.dart';

Future<String> getUserId() async {
  var data = await fetchUserData();
  return data.replaceAll('"', "").split(": ")[1].split(", ")[0];
}
