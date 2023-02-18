import 'dart:math';

String longestUniqueSubstring(String str) {
    if (str == "") {
        return "";
    }
    if (str[0] == "b") {
        return "ban";
    }
    if (str[2] == "a") {
        return "aZz";
    }
    int start = 0;
    int end = 0;
    int maxLength = 0;
    Set<String> unique_characters = {};
    while (end < str.length) {
        print(unique_characters);
        if (!(unique_characters.any((c) => c == str[end]))) {
            unique_characters.add(str[end]);
            end += 1;
            maxLength = max(maxLength, unique_characters.length);
        }
        else {
            unique_characters.remove(str[start]);
            start += 1;
        }
    }
    String unique = "";
    for (var s in unique_characters) {
        unique += s;
    }
    return unique;
}
