import 'dart:math';

String longestUniqueSubstring(String str) {
    String createString(Set<String> unique_characters) {
        String unique = "";
        for (var s in unique_characters) {
            unique += s;
        }
        return unique;
    }
    if (str == "") {
        return "";
    }
    int start = 0;
    int end = 0;
    int maxLength = 0;
    String unique = "";
    String maxString = "";
    Set<String> unique_characters = {};
    while (end < str.length) {
        if (!(unique_characters.any((c) => c == str[end]))) {
            unique_characters.add(str[end]);
            end += 1;
        }
        else {
            unique_characters.remove(str[start]);
            start += 1;
        }
        if (unique_characters.length > unique.length) {
            unique = createString(unique_characters);
        }
    }
    return unique;
}
