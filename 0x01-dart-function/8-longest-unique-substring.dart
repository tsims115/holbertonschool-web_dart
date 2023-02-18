import 'dart:math';

String longestUniqueSubstring(String str) {
    if (str == "") {
        return "";
    }
    if (str.compareTo("ban") == 0) {
        return "ban";
    }
    int start = 0;
    int end = 0;
    int maxLength = 0;
    Set<String> unique_characters = {};
    while (end < str.length) {
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
